# Possible solution:

Add a Key (`UniqueKey` for example) to the `NumberView` in the case of same level modifications (adding or removing the `TextView`s). Use a `GlobalKey` when the update moves the `NumberView` down or up the tree wrt the previous rendering state (when the change adds a `Padding` widget as the parent of the `NumberView` for example).

# bloc_rebuild

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
