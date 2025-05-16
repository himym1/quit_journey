// lib/presentation/features/onboarding/pages/quit_settings_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart'; // For date formatting
import 'package:quit_journey/core/router/app_router.dart';
import 'package:quit_journey/domain/entities/quit_settings_entity.dart';
import 'package:quit_journey/presentation/features/onboarding/notifiers/quit_settings_notifier.dart';

class QuitSettingsPage extends ConsumerStatefulWidget {
  const QuitSettingsPage({super.key});

  @override
  ConsumerState<QuitSettingsPage> createState() => _QuitSettingsPageState();
}

class _QuitSettingsPageState extends ConsumerState<QuitSettingsPage> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedQuitDate;
  TimeOfDay? _selectedQuitTime;

  final _dailyCigarettesController = TextEditingController();
  final _packPriceController = TextEditingController();
  final _yearsSmokedController = TextEditingController();
  final _quitReasonController = TextEditingController();

  @override
  void dispose() {
    _dailyCigarettesController.dispose();
    _packPriceController.dispose();
    _yearsSmokedController.dispose();
    _quitReasonController.dispose();
    super.dispose();
  }

  Future<void> _pickQuitDateTime(BuildContext context) async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedQuitDate ?? now,
      firstDate: DateTime(now.year - 10),
      lastDate: DateTime(
        now.year + 1,
        now.month,
        now.day,
      ), // Cannot be future date beyond today
    );
    if (date == null) return;

    if (!mounted) return;
    final time = await showTimePicker(
      context: context,
      initialTime: _selectedQuitTime ?? TimeOfDay.fromDateTime(now),
    );
    if (time == null) return;

    final selectedDateTime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );
    if (selectedDateTime.isAfter(DateTime.now())) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('戒烟开始时间不能晚于当前时间')));
      }
      return;
    }

    setState(() {
      _selectedQuitDate = date;
      _selectedQuitTime = time;
    });
  }

  String get _formattedQuitDateTime {
    if (_selectedQuitDate == null || _selectedQuitTime == null) {
      return '请选择日期和时间';
    }
    final dateTime = DateTime(
      _selectedQuitDate!.year,
      _selectedQuitDate!.month,
      _selectedQuitDate!.day,
      _selectedQuitTime!.hour,
      _selectedQuitTime!.minute,
    );
    return DateFormat('yyyy-MM-dd HH:mm').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(quitSettingsNotifierProvider);
    final notifier = ref.read(quitSettingsNotifierProvider.notifier);

    ref.listen<QuitSettingsState>(quitSettingsNotifierProvider, (prev, next) {
      if (next.isSaved) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('戒烟参数已保存!')));
        context.goNamed(AppRoute.home.name);
        notifier.resetState();
      } else if (next.error != null && next.error!.isNotEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('保存失败: ${next.error}')));
        notifier.resetError(); // Clear error after showing
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('设置您的戒烟参数')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('戒烟开始日期与时间', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              OutlinedButton.icon(
                icon: const Icon(Icons.calendar_today),
                label: Text(_formattedQuitDateTime),
                onPressed: () => _pickQuitDateTime(context),
              ),
              if (_selectedQuitDate == null || _selectedQuitTime == null)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '此项为必填项',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                      fontSize: 12,
                    ),
                  ),
                ),
              const SizedBox(height: 20),

              TextFormField(
                controller: _dailyCigarettesController,
                decoration: const InputDecoration(
                  labelText: '每日吸烟量 (支)',
                  border: OutlineInputBorder(),
                  suffixText: '支',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入每日吸烟量';
                  }
                  final count = int.tryParse(value);
                  if (count == null || count <= 0) {
                    return '请输入有效的正整数';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              TextFormField(
                controller: _packPriceController,
                decoration: const InputDecoration(
                  labelText: '每包香烟价格 (元)',
                  border: OutlineInputBorder(),
                  suffixText: '元',
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入每包香烟价格';
                  }
                  final price = double.tryParse(value);
                  if (price == null || price <= 0) {
                    return '请输入有效的正数价格';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              TextFormField(
                controller: _yearsSmokedController,
                decoration: const InputDecoration(
                  labelText: '烟龄 (年) (可选)',
                  border: OutlineInputBorder(),
                  suffixText: '年',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value != null && value.isNotEmpty) {
                    final years = int.tryParse(value);
                    if (years == null || years < 0) {
                      return '请输入有效的年数 (非负整数)';
                    }
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              TextFormField(
                controller: _quitReasonController,
                decoration: const InputDecoration(
                  labelText: '我的戒烟宣言/理由',
                  hintText: '例如：为了健康，为了家人...',
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                ),
                maxLines: 3,
                maxLength: 200,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '请输入您的戒烟宣言或理由';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),

              if (state.isLoading)
                const Center(child: CircularProgressIndicator())
              else
                ElevatedButton(
                  onPressed: () {
                    bool isDateTimeSelected =
                        _selectedQuitDate != null && _selectedQuitTime != null;
                    if (!isDateTimeSelected) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('请选择戒烟开始日期和时间')),
                      );
                      setState(() {});
                      return;
                    }

                    if (_formKey.currentState!.validate()) {
                      final quitDateTime = DateTime(
                        _selectedQuitDate!.year,
                        _selectedQuitDate!.month,
                        _selectedQuitDate!.day,
                        _selectedQuitTime!.hour,
                        _selectedQuitTime!.minute,
                      );

                      final settings = QuitSettingsEntity(
                        userId:
                            '', // Placeholder, will be handled by use case/repository
                        quitDateTime: quitDateTime,
                        dailyCigarettes: int.parse(
                          _dailyCigarettesController.text,
                        ),
                        packPrice: double.parse(_packPriceController.text),
                        smokingYears:
                            _yearsSmokedController.text.isEmpty
                                ? null
                                : int.parse(_yearsSmokedController.text),
                        quitReason: _quitReasonController.text,
                        createdAt: DateTime.now(),
                      );
                      notifier.saveSettings(settings);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text('完成并保存'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
