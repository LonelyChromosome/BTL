import 'package:flutter/material.dart';

// Màn hình sinh viên phụ trách: chỉ sử dụng StatelessWidget.
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const dark = Color(0xFF1F5138);
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(height: 16),
        const Text('Xin chào, sinh viên!', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: dark)),
        const SizedBox(height: 6),
        const Text('Tổng quan lịch học hôm nay', style: TextStyle(color: Color(0xFF61756A))),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(22),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Color(0xFF317C54), Color(0xFF5BA778)]),
            borderRadius: BorderRadius.circular(22),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.calendar_month, size: 30, color: Colors.white),
              SizedBox(height: 14),
              Text('THỜI KHÓA BIỂU', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600)),
              SizedBox(height: 8),
              Text('3 môn học hôm nay', style: TextStyle(color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold)),
              SizedBox(height: 6),
              Text('Theo dõi lịch học dễ dàng', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const Text('Lịch học', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: dark)),
        const SizedBox(height: 12),
        const _SubjectTile(time: '07:30', title: 'Lập trình thiết bị di động', room: 'Phòng A2-301', icon: Icons.phone_android),
        const _SubjectTile(time: '09:30', title: 'Phân tích thiết kế HTTT', room: 'Phòng A3-204', icon: Icons.account_tree_outlined),
        const _SubjectTile(time: '13:00', title: 'Lập trình Web', room: 'Phòng A2-205', icon: Icons.code),
        const SizedBox(height: 16),
        const Text('Dữ liệu minh họa phục vụ bài thực hành Flutter.', style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}

class _SubjectTile extends StatelessWidget {
  final String time;
  final String title;
  final String room;
  final IconData icon;

  const _SubjectTile({required this.time, required this.title, required this.room, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(color: const Color(0xFFE5F4E9), borderRadius: BorderRadius.circular(14)),
              child: Icon(icon, color: const Color(0xFF317C54)),
            ),
            const SizedBox(width: 12),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
              const SizedBox(height: 4),
              Text('$time  •  $room', style: const TextStyle(fontSize: 12, color: Colors.black54)),
            ])),
          ],
        ),
      ),
    );
  }
}
