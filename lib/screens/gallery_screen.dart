import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_avatar.dart';
import '../widgets/custom_badge.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custom_alert.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_progress.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Galería de Componentes'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 2,
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
              Icon(icon, color: Colors.blue, size: 24),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 8),
          const Divider(),
          child,
        ],
      ),
    );
  }
}
