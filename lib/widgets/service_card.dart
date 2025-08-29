import 'package:flutter/material.dart';
import '../models/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  final VoidCallback? onTap;

  const ServiceCard({
    super.key,
    required this.service,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final isTablet = screenWidth >= 600 && screenWidth < 900;

    // Responsive variables
    final cardPadding = isMobile ? 8.0 : 12.0;
    final titleFontSize = isMobile ? 11.0 : 14.0;
    final priceFontSize = isMobile ? 9.0 : 12.0;
    final iconSize = isMobile ? 12.0 : 16.0;

    // Category colors
    final categoryColor = _getCategoryColor(service.category);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(cardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Service Image
              Container(
                height: isMobile ? 80 : 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.network(
                  service.imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            categoryColor.withValues(alpha: 0.3),
                            categoryColor.withValues(alpha: 0.1),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Icon(
                        _getCategoryIcon(service.category),
                        size: isMobile ? 32 : 40,
                        color: categoryColor,
                      ),
                    );
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                      child: Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                          strokeWidth: 2,
                          color: categoryColor,
                        ),
                      ),
                    );
                  },
                ),
              ),

              Container(height: isMobile ? 8 : 12),

              // Title
              Text(
                service.title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E293B),
                      fontSize: titleFontSize,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              // Description (only on larger screens)
              if (!isMobile || screenWidth > 400) ...[
                const SizedBox(height: 4),
                Text(
                  service.description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey.shade600,
                        fontSize: isMobile ? 9 : 11,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],

              // Flexible spacer
              const Spacer(),

              // Price and Duration Row
              Row(
                children: [
                  // Price Container
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 6 : 8,
                        vertical: isMobile ? 4 : 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.green.withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            size: iconSize,
                            color: Colors.green,
                          ),
                          const SizedBox(width: 2),
                          Expanded(
                            child: Text(
                              (service.price * 75)
                                  .toStringAsFixed(isMobile ? 0 : 0),
                              style: TextStyle(
                                fontSize: priceFontSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Duration Container
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 6 : 8,
                        vertical: isMobile ? 4 : 6,
                      ),
                      decoration: BoxDecoration(
                        color: categoryColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: categoryColor.withValues(alpha: 0.3),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.access_time,
                            size: iconSize - 2,
                            color: categoryColor,
                          ),
                          const SizedBox(width: 2),
                          Expanded(
                            child: Text(
                              service.durationText,
                              style: TextStyle(
                                color: categoryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: isMobile ? 8 : 10,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getCategoryColor(String category) {
    switch (category.toLowerCase()) {
      case 'cleaning':
        return const Color(0xFF3B82F6); // Blue
      case 'plumbing':
      case 'maintenance':
        return const Color(0xFF10B981); // Green
      case 'electrical':
        return const Color(0xFFF59E0B); // Amber
      case 'beauty':
      case 'wellness':
        return const Color(0xFFEC4899); // Pink
      case 'fitness':
        return const Color(0xFF8B5CF6); // Purple
      case 'pet care':
        return const Color(0xFFEF4444); // Red
      case 'outdoor':
        return const Color(0xFF059669); // Emerald
      case 'automotive':
        return const Color(0xFF7C3AED); // Violet
      default:
        return const Color(0xFF6B7280); // Gray
    }
  }

  IconData _getCategoryIcon(String category) {
    switch (category.toLowerCase()) {
      case 'cleaning':
        return Icons.cleaning_services;
      case 'plumbing':
      case 'maintenance':
        return Icons.plumbing;
      case 'electrical':
        return Icons.electrical_services;
      case 'beauty':
      case 'wellness':
        return Icons.spa;
      case 'fitness':
        return Icons.fitness_center;
      case 'pet care':
        return Icons.pets;
      case 'outdoor':
        return Icons.grass;
      case 'automotive':
        return Icons.car_repair;
      default:
        return Icons.home_repair_service;
    }
  }
}
