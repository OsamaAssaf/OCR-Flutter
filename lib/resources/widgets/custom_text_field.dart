import 'package:ocr/resources/helpers/all_imports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.label,
    this.hint,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
    this.autofillHints,
    this.textInputType,
    this.textInputAction,
    this.focusNode,
    this.minLines,
    this.maxLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.enabled,
    this.initialValue,
    this.textAlign = TextAlign.start,
  });

  final TextEditingController? controller;
  final bool obscureText;
  final String? label;
  final String? hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final void Function(String?)? onChanged;
  final void Function(String?)? onFieldSubmitted;
  final List<String>? autofillHints;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool? enabled;
  final String? initialValue;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      textAlign: textAlign,
      focusNode: focusNode,
      obscureText: obscureText,
      autofillHints: autofillHints,
      validator: validator,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      maxLength: maxLength,
      enabled: enabled,
      style: theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.normal,
      ),
      keyboardType: textInputType,
      textInputAction: textInputAction,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: customTheme.textFieldBackground,
        focusColor: customTheme.textFieldBackground,
        hoverColor: customTheme.textFieldBackground,
        labelText: label,
        labelStyle: theme.textTheme.titleLarge,
        errorStyle: theme.textTheme.titleMedium!.copyWith(
          color: customTheme.error,
        ),
        errorMaxLines: 2,
        hintText: hint,
        counterStyle: theme.textTheme.titleMedium!.copyWith(
          color: customTheme.black,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: theme.colorScheme.primary,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: customTheme.grey,
          ),
        ),
        suffixIcon: suffixIcon,
        // suffixIcon != null
        //     ? Padding(
        //         padding: EdgeInsets.symmetric(
        //           horizontal: 4.0,
        //           // right: Components().isRTL() ? 0.0 : 8.0,
        //           // left: Components().isRTL() ? 8.0 : 0.0,
        //         ),
        //         child: UnconstrainedBox(
        //           child: suffixIcon,
        //         ),
        //       )
        //     : null,
        prefixIcon: prefixIcon,
        // prefixIcon != null
        //     ? Padding(
        //         padding: EdgeInsets.symmetric(
        //           horizontal: 0.0,
        //           // right: Components().isRTL() ? 0.0 : 8.0,
        //           // left: Components().isRTL() ? 8.0 : 0.0,
        //         ),
        //         child: UnconstrainedBox(
        //           child: prefixIcon,
        //         ),
        //       )
        //     : null,
      ),
      onTap: onTap,
      onTapOutside: (_) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      inputFormatters: inputFormatters,
    );
  }
}
