# Galería de Componentes Flutter

## 📋 Información del Estudiante

**Nombre:** Angeluz Abimelek Franco Hernandez  
**Matrícula:** 20223tn093

## 📝 Descripción del Proyecto

Este proyecto es una aplicación móvil Flutter que presenta una galería completa de componentes visuales personalizados. Cada componente ha sido implementado desde cero con múltiples variantes que demuestran diferentes estilos, colores y configuraciones.

La aplicación está diseñada para mostrar componentes puramente visuales, organizados en una pantalla principal de fácil navegación, donde cada componente se presenta con sus variantes y descripciones.

## 🎨 Componentes Implementados

Este proyecto incluye **8 componentes personalizados**, cada uno con al menos 3 variantes:

1. **CustomButton** - Botones personalizados
2. **CustomCard** - Tarjetas contenedoras
3. **CustomAvatar** - Avatares con diferentes formas
4. **CustomBadge** - Etiquetas de estado
5. **CustomChip** - Chips para selección/filtrado
6. **CustomAlert** - Alertas informativas
7. **CustomInput** - Campos de entrada de texto
8. **CustomProgress** - Indicadores de progreso

## 📊 Tabla de Componentes y Variantes

| Componente | Variante 1 | Variante 2 | Variante 3 | Variante 4 |
|------------|-----------|-----------|-----------|-----------|
| **CustomButton** | Primary | Secondary | Outlined | - |
| **CustomCard** | Elevated | Outlined | Filled | - |
| **CustomAvatar** | Circular | Rounded | Square | - |
| **CustomBadge** | Info | Success | Warning | Error |
| **CustomChip** | Default | Outlined | Colored | - |
| **CustomAlert** | Info | Success | Warning | Error |
| **CustomInput** | Standard | Outlined | Filled | - |
| **CustomProgress** | Linear | Circular | Custom | - |

## 🏗️ Estructura del Proyecto

```
lib/
├── main.dart
├── screens/
│   └── gallery_screen.dart
└── widgets/
    ├── custom_button.dart
    ├── custom_card.dart
    ├── custom_avatar.dart
    ├── custom_badge.dart
    ├── custom_chip.dart
    ├── custom_alert.dart
    ├── custom_input.dart
    └── custom_progress.dart
```

## 🚀 Instrucciones para Ejecutar el Proyecto

### Prerrequisitos

- Flutter SDK 3.35.4 o superior
- Dart 3.9.2 o superior
- Un emulador Android/iOS o dispositivo físico conectado

### Pasos de Instalación

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/AngeluzFranco/component_gallery.git
   cd component_gallery
   ```

2. **Instalar dependencias:**
   ```bash
   flutter pub get
   ```

3. **Verificar dispositivos disponibles:**
   ```bash
   flutter devices
   ```

4. **Ejecutar la aplicación:**
   ```bash
   flutter run
   ```

### Comandos Adicionales

- **Ejecutar en modo release:**
  ```bash
  flutter run --release
  ```

- **Limpiar el proyecto:**
  ```bash
  flutter clean
  flutter pub get
  ```

- **Analizar el código:**
  ```bash
  flutter analyze
  ```

## 💻 Versión de Flutter Utilizada

- **Flutter:** 3.35.4 (Canal: stable)
- **Dart:** 3.9.2
- **DevTools:** 2.48.0

## ✨ Características Principales

- ✅ Estructura organizada con carpetas `widgets/` y `screens/`
- ✅ 8 componentes diferentes con múltiples variantes
- ✅ Uso de enumeraciones (enums) para variantes
- ✅ Componentes implementados como StatelessWidget
- ✅ Diseño responsivo y visualmente atractivo
- ✅ Código limpio y bien documentado
- ✅ Sin dependencias externas para los componentes

## 📱 Características de los Componentes

### CustomButton
Botones personalizados con tres estilos diferentes: primary (fondo azul sólido), secondary (fondo gris), y outlined (solo borde).

### CustomCard
Tarjetas contenedoras que soportan tres variantes: elevated (con sombra), outlined (con borde), y filled (con color de fondo).

### CustomAvatar
Avatares que se pueden mostrar en tres formas: circular, rounded (esquinas redondeadas), y square (cuadrado).

### CustomBadge
Etiquetas pequeñas de estado con cuatro variantes de color: info (azul), success (verde), warning (naranja), y error (rojo).

### CustomChip
Chips para selección o filtrado con soporte para eliminación opcional y tres estilos diferentes.

### CustomAlert
Alertas informativas con iconos y cuatro tipos de mensajes: info, success, warning, y error.

### CustomInput
Campos de entrada de texto con tres estilos: standard (línea inferior), outlined (borde completo), y filled (fondo de color).

### CustomProgress
Indicadores de progreso en tres formatos: linear (barra horizontal), circular, y custom (circular con porcentaje).

## 📄 Licencia

Este proyecto fue desarrollado como parte de una práctica académica.

---

**Desarrollado por:** Angeluz Abimelek Franco Hernandez  
**Institución:** [Tu Institución]  
**Fecha:** Noviembre 2025
