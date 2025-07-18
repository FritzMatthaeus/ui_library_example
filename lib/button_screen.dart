import 'package:flutter/material.dart';
import 'package:ui_library_example/src/components/buttons/filled_buttons/filled_action_cancel_button.dart';
// Import all button components
import 'package:ui_library_example/src/components/buttons/filled_buttons/filled_confirm_button.dart';
import 'package:ui_library_example/src/components/buttons/filled_buttons/filled_deny_button.dart';
import 'package:ui_library_example/src/components/buttons/filled_buttons/filled_destructive_cancel_button.dart';
import 'package:ui_library_example/src/components/buttons/outlined_buttons/outlined_action_cancel_button.dart';
import 'package:ui_library_example/src/components/buttons/outlined_buttons/outlined_confirm_button.dart';
import 'package:ui_library_example/src/components/buttons/outlined_buttons/outlined_deny_button.dart';
import 'package:ui_library_example/src/components/buttons/outlined_buttons/outlined_destructive_cancel_button.dart';
import 'package:ui_library_example/src/components/buttons/text_buttons/text_action_cancel_button.dart';
import 'package:ui_library_example/src/components/buttons/text_buttons/text_confirm_button.dart';
import 'package:ui_library_example/src/components/buttons/text_buttons/text_deny_button.dart';
import 'package:ui_library_example/src/components/buttons/text_buttons/text_destructive_cancel_button.dart';
import 'package:ui_library_example/src/foundation/my_theme.dart';
import 'package:ui_library_example/src/foundation/themes/button_theme.dart';
import 'package:ui_library_example/src/helpers/extensions.dart';

void main() {
  runApp(const ButtonDemoApp());
}

class ButtonDemoApp extends StatefulWidget {
  const ButtonDemoApp({super.key});

  @override
  State<ButtonDemoApp> createState() => _ButtonDemoAppState();
}

class ButtonScreen extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onThemeToggle;

  const ButtonScreen({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonDemoAppState extends State<ButtonDemoApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Library Button Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: _isDarkMode ? Brightness.dark : Brightness.light,
        ),
        extensions: [_isDarkMode ? MyThemes.dark : MyThemes.light],
        useMaterial3: true,
      ),
      home: ButtonScreen(
        isDarkMode: _isDarkMode,
        onThemeToggle: () => setState(() => _isDarkMode = !_isDarkMode),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final scaffoldTheme = context.scaffoldTheme;
    final scaffoldStyle = scaffoldTheme.scaffoldStyle;

    return Scaffold(
      backgroundColor: scaffoldStyle.backgroundColor,
      appBar: AppBar(
        title: Text(
          'UI Library Button Showcase',
          style: TextStyle(
            color: scaffoldStyle.textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: scaffoldStyle.backgroundColor.withOpacity(0.95),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: widget.onThemeToggle,
            icon: Icon(
              widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: scaffoldStyle.textColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              'Theme Information',
              Text(
                'Current theme: ${widget.isDarkMode ? 'Dark' : 'Light'}\n'
                'This showcase demonstrates all available button components\n'
                'from your custom UI library.',
                style: TextStyle(
                  color: scaffoldStyle.textColor.withOpacity(0.7),
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Filled Buttons - All Variants',
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: FilledConfirmButton()),
                      const SizedBox(width: 12),
                      Expanded(child: FilledDenyButton()),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(child: FilledActionCancelButton()),
                      const SizedBox(width: 12),
                      Expanded(child: FilledDestructiveCancelButton()),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Outlined Buttons - All Variants',
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: OutlinedConfirmButton()),
                      const SizedBox(width: 12),
                      Expanded(child: OutlinedDenyButton()),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(child: OutlinedActionCancelButton()),
                      const SizedBox(width: 12),
                      Expanded(child: OutlinedDestructiveCancelButton()),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Text Buttons - All Variants',
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: TextConfirmButton()),
                      const SizedBox(width: 12),
                      Expanded(child: TextDenyButton()),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(child: TextActionCancelButton()),
                      const SizedBox(width: 12),
                      Expanded(child: TextDestructiveCancelButton()),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Button Sizes - Small',
              Column(
                children: [
                  Row(
                    children: [
                      FilledConfirmButton(size: ButtonSize.small),
                      const SizedBox(width: 12),
                      OutlinedDenyButton(size: ButtonSize.small),
                      const SizedBox(width: 12),
                      TextActionCancelButton(size: ButtonSize.small),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Button Sizes - Medium (Default)',
              Column(
                children: [
                  Row(
                    children: [
                      FilledConfirmButton(size: ButtonSize.medium),
                      const SizedBox(width: 12),
                      OutlinedDenyButton(size: ButtonSize.medium),
                      const SizedBox(width: 12),
                      TextActionCancelButton(size: ButtonSize.medium),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Button Sizes - Large',
              Column(
                children: [
                  Row(
                    children: [
                      FilledConfirmButton(size: ButtonSize.large),
                      const SizedBox(width: 12),
                      OutlinedDenyButton(size: ButtonSize.large),
                      const SizedBox(width: 12),
                      TextActionCancelButton(size: ButtonSize.large),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Disabled States',
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: FilledConfirmButton(isDisabled: true)),
                      const SizedBox(width: 12),
                      Expanded(child: OutlinedDenyButton(isDisabled: true)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(child: TextActionCancelButton(isDisabled: true)),
                      const SizedBox(width: 12),
                      Expanded(
                        child: FilledDestructiveCancelButton(isDisabled: true),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Interactive Loading Demo',
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: FilledConfirmButton(isDisabled: _isLoading),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _simulateLoading,
                          child: Text(
                            _isLoading ? 'Loading...' : 'Start Loading',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (_isLoading) const LinearProgressIndicator(),
                ],
              ),
            ),

            const SizedBox(height: 32),

            _buildSection(
              'Component Information',
              Text(
                'Available Button Types:\n'
                '• Filled Buttons: Confirm, Deny, Action Cancel, Destructive Cancel\n'
                '• Outlined Buttons: Confirm, Deny, Action Cancel, Destructive Cancel\n'
                '• Text Buttons: Confirm, Deny, Action Cancel, Destructive Cancel\n\n'
                'Available Sizes:\n'
                '• Small: Compact interfaces\n'
                '• Medium: Standard touch targets (default)\n'
                '• Large: Primary actions\n\n'
                'All buttons support disabled states and follow the design system theme.',
                style: TextStyle(
                  color: scaffoldStyle.textColor.withOpacity(0.7),
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, Widget child) {
    final scaffoldTheme = context.scaffoldTheme;
    final scaffoldStyle = scaffoldTheme.scaffoldStyle;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: scaffoldStyle.textColor,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: scaffoldStyle.backgroundColor.withOpacity(0.05),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: scaffoldStyle.textColor.withOpacity(0.1)),
          ),
          child: child,
        ),
      ],
    );
  }

  void _simulateLoading() async {
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      setState(() => _isLoading = false);
    }
  }
}
