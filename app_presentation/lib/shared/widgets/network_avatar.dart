import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetworkAvatar extends StatelessWidget {
  final String? src;
  final double? size;
  const NetworkAvatar({super.key, required this.src, this.size});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      src ?? "",
      width: size ?? 24.sp,
      height: size ?? 24.sp,
      errorBuilder: (context, error, stackTrace) => Icon(
        Icons.error,
        color: Colors.red,
        size: size ?? 24.sp,
      ),
      loadingBuilder: (context, child, loadingProgress) =>
          loadingProgress == null ? child : const CircularProgressIndicator(),
    );
  }
}
