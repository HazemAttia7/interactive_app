String formatTimeAgo(DateTime dateTime) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  if (difference.inSeconds < 60) {
    return 'now';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes}m ago';
  } else if (difference.inHours < 24) {
    return '${difference.inHours}h ago';
  } else if (difference.inDays < 30) {
    return '${difference.inDays}d ago';
  } else if (difference.inDays < 365) {
    return '${(difference.inDays / 30).floor()}mo ago';
  } else {
    return '${(difference.inDays / 365).floor()}y ago';
  }
}
