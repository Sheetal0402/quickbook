import '../models/service.dart';
import '../models/user.dart';

class DummyData {
  static List<Service> get services => [
        const Service(
          id: '1',
          title: 'House Cleaning',
          description:
              'Professional house cleaning service with eco-friendly products',
          price: 89.99,
          durationMinutes: 120,
          imageUrl:
              'https://images.unsplash.com/photo-1581578731548-c64695cc6952?w=400',
          category: 'Cleaning',
        ),
        const Service(
          id: '2',
          title: 'Plumbing Repair',
          description: 'Expert plumbing services for all your home needs',
          price: 129.99,
          durationMinutes: 90,
          imageUrl:
              'https://images.unsplash.com/photo-1607472586893-edb57bdc0e39?w=400',
          category: 'Maintenance',
        ),
        const Service(
          id: '3',
          title: 'Massage Therapy',
          description: 'Relaxing full-body massage at your home',
          price: 149.99,
          durationMinutes: 60,
          imageUrl:
              'https://images.unsplash.com/photo-1544161515-4ab6ce6db874?w=400',
          category: 'Wellness',
        ),
        const Service(
          id: '4',
          title: 'Pet Grooming',
          description: 'Professional grooming service for your furry friends',
          price: 79.99,
          durationMinutes: 90,
          imageUrl:
              'https://images.unsplash.com/photo-1560807707-8cc77767d783?w=400',
          category: 'Pet Care',
        ),
        const Service(
          id: '5',
          title: 'AC Maintenance',
          description: 'Air conditioning inspection and maintenance service',
          price: 99.99,
          durationMinutes: 75,
          imageUrl:
              'https://images.unsplash.com/photo-1621905251189-08b45d6a269e?w=400',
          category: 'Maintenance',
        ),
        const Service(
          id: '6',
          title: 'Garden Care',
          description: 'Complete garden maintenance and landscaping',
          price: 159.99,
          durationMinutes: 180,
          imageUrl:
              'https://images.unsplash.com/photo-1416879595882-3373a0480b5b?w=400',
          category: 'Outdoor',
        ),
        const Service(
          id: '7',
          title: 'Car Wash',
          description: 'Premium car washing and detailing service',
          price: 69.99,
          durationMinutes: 45,
          imageUrl:
              'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400',
          category: 'Automotive',
        ),
        const Service(
          id: '8',
          title: 'Personal Training',
          description: 'One-on-one fitness training session',
          price: 99.99,
          durationMinutes: 60,
          imageUrl:
              'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=400',
          category: 'Fitness',
        ),
      ];

  static List<Booking> get bookings => [
        Booking(
          id: '1',
          service: services[0],
          dateTime: DateTime.now().add(const Duration(days: 2)),
          status: BookingStatus.upcoming,
          notes: 'Please call before arriving',
        ),
        Booking(
          id: '2',
          service: services[2],
          dateTime: DateTime.now().add(const Duration(days: 5)),
          status: BookingStatus.upcoming,
        ),
        Booking(
          id: '3',
          service: services[1],
          dateTime: DateTime.now().subtract(const Duration(days: 3)),
          status: BookingStatus.completed,
        ),
        Booking(
          id: '4',
          service: services[3],
          dateTime: DateTime.now().subtract(const Duration(days: 7)),
          status: BookingStatus.completed,
        ),
      ];

  static UserProfile get userProfile => UserProfile(
        id: '1',
        name: 'John Doe',
        email: 'john.doe@example.com',
        phone: '+1 (555) 123-4567',
        profileImageUrl:
            'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=400',
        joinDate: DateTime(2023, 6, 15),
      );
}
