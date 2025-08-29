class Service {
  final String id;
  final String title;
  final String description;
  final double price;
  final int durationMinutes;
  final String imageUrl;
  final String category;

  const Service({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.durationMinutes,
    required this.imageUrl,
    required this.category,
  });

  String get durationText {
    if (durationMinutes < 60) {
      return '${durationMinutes}min';
    } else {
      final hours = durationMinutes ~/ 60;
      final minutes = durationMinutes % 60;
      if (minutes == 0) {
        return '${hours}h';
      } else {
        return '${hours}h ${minutes}min';
      }
    }
  }
}

class Booking {
  final String id;
  final Service service;
  final DateTime dateTime;
  final BookingStatus status;
  final String? notes;

  const Booking({
    required this.id,
    required this.service,
    required this.dateTime,
    required this.status,
    this.notes,
  });
}

enum BookingStatus {
  upcoming,
  completed,
  cancelled,
}

extension BookingStatusExtension on BookingStatus {
  String get displayName {
    switch (this) {
      case BookingStatus.upcoming:
        return 'Upcoming';
      case BookingStatus.completed:
        return 'Completed';
      case BookingStatus.cancelled:
        return 'Cancelled';
    }
  }
}
