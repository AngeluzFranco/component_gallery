import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_avatar.dart';
import '../widgets/custom_badge.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custom_alert.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_progress.dart';
import '../widgets/custom_divider.dart';
import '../widgets/custom_toggle.dart';

class GalleryScreen extends StatelessWidget {
  final VoidCallback onThemeToggle;
  final bool isDarkMode;

  const GalleryScreen({
    super.key,
    required this.onThemeToggle,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Galería de Componentes'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 2,
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: onThemeToggle,
            tooltip: isDarkMode ? 'Modo Claro' : 'Modo Oscuro',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. CustomButton Section
            _buildSection(
              title: '1. Botones',
              icon: Icons.touch_app,
              description: 'Botones personalizados con diferentes estilos',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  CustomButton(
                    text: 'Primary Button',
                    onPressed: () {},
                    variant: ButtonVariant.primary,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    text: 'Secondary Button',
                    onPressed: () {},
                    variant: ButtonVariant.secondary,
                    width: double.infinity,
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    text: 'Outlined Button',
                    onPressed: () {},
                    variant: ButtonVariant.outlined,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 2. CustomCard Section
            _buildSection(
              title: '2. Tarjetas',
              icon: Icons.credit_card,
              description: 'Tarjetas contenedoras con diferentes estilos',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const CustomCard(
                    variant: CardVariant.elevated,
                    child: Text(
                      'Elevated Card\nTarjeta con sombra',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const CustomCard(
                    variant: CardVariant.outlined,
                    child: Text(
                      'Outlined Card\nTarjeta con borde',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const CustomCard(
                    variant: CardVariant.filled,
                    child: Text(
                      'Filled Card\nTarjeta con color de fondo',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 3. CustomAvatar Section
            _buildSection(
              title: '3. Avatares',
              icon: Icons.account_circle,
              description: 'Avatares con diferentes formas',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const CustomAvatar(
                            initials: 'AB',
                            variant: AvatarVariant.circular,
                            backgroundColor: Colors.blue,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Circular',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const CustomAvatar(
                            initials: 'CD',
                            variant: AvatarVariant.rounded,
                            backgroundColor: Colors.green,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Rounded',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const CustomAvatar(
                            initials: 'EF',
                            variant: AvatarVariant.square,
                            backgroundColor: Colors.purple,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Square',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 4. CustomBadge Section
            _buildSection(
              title: '4. Badges',
              icon: Icons.label,
              description: 'Etiquetas pequeñas de estado o información',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: const [
                      CustomBadge(text: 'Info', variant: BadgeVariant.info),
                      CustomBadge(text: 'Success', variant: BadgeVariant.success),
                      CustomBadge(text: 'Warning', variant: BadgeVariant.warning),
                      CustomBadge(text: 'Error', variant: BadgeVariant.error),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 5. CustomChip Section
            _buildSection(
              title: '5. Chips',
              icon: Icons.sell,
              description: 'Chips para selección o filtrado',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      const CustomChip(
                        label: 'Default',
                        variant: ChipVariant.defaultChip,
                      ),
                      const CustomChip(
                        label: 'Selected',
                        variant: ChipVariant.defaultChip,
                        selected: true,
                      ),
                      const CustomChip(
                        label: 'Outlined',
                        variant: ChipVariant.outlined,
                      ),
                      const CustomChip(
                        label: 'Colored',
                        variant: ChipVariant.colored,
                        selected: true,
                      ),
                      CustomChip(
                        label: 'Deletable',
                        variant: ChipVariant.defaultChip,
                        onDeleted: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 6. CustomAlert Section
            _buildSection(
              title: '6. Alertas',
              icon: Icons.notifications,
              description: 'Alertas/mensajes informativos',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const CustomAlert(
                    message: 'Esta es una alerta informativa',
                    variant: AlertVariant.info,
                  ),
                  const SizedBox(height: 12),
                  const CustomAlert(
                    message: 'Operación completada con éxito',
                    variant: AlertVariant.success,
                  ),
                  const SizedBox(height: 12),
                  const CustomAlert(
                    message: 'Advertencia: revisa esta información',
                    variant: AlertVariant.warning,
                  ),
                  const SizedBox(height: 12),
                  CustomAlert(
                    message: 'Error: algo salió mal',
                    variant: AlertVariant.error,
                    onClose: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 7. CustomInput Section
            _buildSection(
              title: '7. Campos de Entrada',
              icon: Icons.edit,
              description: 'Campos de entrada de texto personalizados',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  const CustomInput(
                    hintText: 'Standard Input',
                    variant: InputVariant.standard,
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(height: 16),
                  const CustomInput(
                    hintText: 'Outlined Input',
                    variant: InputVariant.outlined,
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(height: 16),
                  const CustomInput(
                    hintText: 'Filled Input',
                    variant: InputVariant.filled,
                    prefixIcon: Icons.lock,
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 8. CustomProgress Section
            _buildSection(
              title: '8. Indicadores de Progreso',
              icon: Icons.hourglass_empty,
              description: 'Indicadores de progreso',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Linear Progress',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const CustomProgress(
                        value: 0.7,
                        variant: ProgressVariant.linear,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const CustomProgress(
                            value: 0.5,
                            variant: ProgressVariant.circular,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Circular',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const CustomProgress(
                            value: 0.75,
                            variant: ProgressVariant.custom,
                            color: Colors.purple,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Custom',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 9. CustomDivider Section
            _buildSection(
              title: '9. Divisores',
              icon: Icons.horizontal_rule,
              description: 'Divisores con diferentes estilos',
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Solid',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const CustomDivider(
                        variant: DividerVariant.solid,
                        thickness: 2,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dashed',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const CustomDivider(
                        variant: DividerVariant.dashed,
                        thickness: 2,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gradient',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const CustomDivider(
                        variant: DividerVariant.gradient,
                        thickness: 3,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 10. CustomToggle Section
            _buildSection(
              title: '10. Toggles',
              icon: Icons.toggle_on,
              description: 'Interruptores con animaciones',
              child: _ToggleSection(),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required IconData icon,
    required String description,
    required Widget child,
  }) {
    return Builder(
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: Theme.of(context).colorScheme.primary, size: 24),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 8),
              const Divider(),
              child,
            ],
          ),
        );
      },
    );
  }
}

class _ToggleSection extends StatefulWidget {
  @override
  State<_ToggleSection> createState() => _ToggleSectionState();
}

class _ToggleSectionState extends State<_ToggleSection> {
  bool _standardValue = false;
  bool _iosValue = true;
  bool _customValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Standard Toggle',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
              ),
            ),
            CustomToggle(
              value: _standardValue,
              onChanged: (value) {
                setState(() {
                  _standardValue = value;
                });
              },
              variant: ToggleVariant.standard,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'iOS Style Toggle',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
              ),
            ),
            CustomToggle(
              value: _iosValue,
              onChanged: (value) {
                setState(() {
                  _iosValue = value;
                });
              },
              variant: ToggleVariant.ios,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Custom Animated Toggle',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade700,
              ),
            ),
            CustomToggle(
              value: _customValue,
              onChanged: (value) {
                setState(() {
                  _customValue = value;
                });
              },
              variant: ToggleVariant.custom,
            ),
          ],
        ),
      ],
    );
  }
}
