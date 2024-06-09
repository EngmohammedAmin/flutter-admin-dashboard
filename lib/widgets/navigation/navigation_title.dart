import 'package:flutter/material.dart';
import 'package:admin_dashboard/router.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NavigationTitle extends StatelessWidget {
  const NavigationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
// التعامل مع الاستثناء مع التعطيل لأنه لا يمكن عرض المؤشر بسبب SelectionArea
    // ref. https://github.com/flutter/flutter/issues/104595#issuecomment-1378549493
    return SelectionContainer.disabled(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Visibility(
          visible: ResponsiveBreakpoints.of(context).largerThan(MOBILE),
          child: GestureDetector(
            onTap: () => context.go(routerInitialLocation),
            child: Text(
              'Flutter Admin Dashboard',
              style: theme.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
