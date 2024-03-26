part of '../../../one_day_auth.dart';

/// UI component for GitHub sign in
class GitHubSignInButton extends StatelessWidget {
  /// Sing in [VoidCallback]
  final VoidCallback? onPressed;

  /// show loader and disable [onPressed]
  final bool isLoading;

  /// button color
  final Color buttonColor;

  /// GitHub icon color
  final Color iconColor;

  /// title: Continue with GitHub
  final String? title;

  /// title [TextStyle]
  final TextStyle? titleStyle;

  /// use only material style [Widget]
  final bool useMaterialStyle;

  /// material progress indicator color
  final Color materialProgressIndicatorColor;

  /// cupertino progress indicator color
  final Color cupertinoProgressIndicatorColor;

  const GitHubSignInButton({
    required this.onPressed,
    this.isLoading = false,
    this.buttonColor = const Color(0xFF262626),
    this.iconColor = Colors.white,
    this.title,
    this.titleStyle,
    this.useMaterialStyle = false,
    this.cupertinoProgressIndicatorColor = Colors.white,
    this.materialProgressIndicatorColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthMainButton(
      onPressed: onPressed,
      color: buttonColor,
      loading: isLoading,
      useMaterialStyle: useMaterialStyle,
      cupertinoProgressIndicatorColor: cupertinoProgressIndicatorColor,
      materialProgressIndicatorColor: materialProgressIndicatorColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.string(
            AuthStyles.iconGitHub,
            width: 22,
            height: 22,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
          const SizedBox(width: 8),
          Text(
            title ?? AuthLocalizations.labelsOf(context).continueWithGitHub,
            style: titleStyle ??
                AuthStyles.mainButtonStyle(
                  size: 16,
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
