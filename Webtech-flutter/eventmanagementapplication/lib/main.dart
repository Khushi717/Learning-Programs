import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui';
import 'dart:math' as math;

void main() {
  runApp(const EventApp());
}

class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aura Events',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const SplashScreen(),
    );
  }
}

class AppTheme {
  static const Color primary = Color(0xFF6366F1); // Indigo
  static const Color secondary = Color(0xFFA855F7); // Purple
  static const Color accent = Color(0xFFEC4899); // Pink
  static const Color info = Color(0xFF06B6D4); // Cyan
  static const Color bg = Color(0xFF0F172A); // Deep Navy

  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        secondary: secondary,
        surface: const Color(0xFF1E293B),
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: bg,
      fontFamily: 'Inter',
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.w900, letterSpacing: -1.0, color: Colors.white),
      ),
    );
  }
}

// ================== MODELS ==================

class Event {
  final String id;
  final String title;
  final DateTime date;
  final String venue;
  final String description;
  final String category;
  bool isInterested;

  Event({
    required this.id,
    required this.title,
    required this.date,
    required this.venue,
    required this.description,
    required this.category,
    this.isInterested = false,
  });
}

// ================== ANIMATED COMPONENTS ==================

class MeshGradientBackground extends StatefulWidget {
  const MeshGradientBackground({super.key});

  @override
  State<MeshGradientBackground> createState() => _MeshGradientBackgroundState();
}

class _MeshGradientBackgroundState extends State<MeshGradientBackground> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 25))..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: AppTheme.bg),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Stack(
              children: [
                _buildBlob(AppTheme.primary.withOpacity(0.2), 0.1, 0.2, 300, 1.0),
                _buildBlob(AppTheme.secondary.withOpacity(0.2), 0.8, 0.1, 350, 0.7),
                _buildBlob(AppTheme.accent.withOpacity(0.15), 0.3, 0.8, 400, 1.3),
                _buildBlob(AppTheme.info.withOpacity(0.15), 0.7, 0.7, 250, 0.9),
              ],
            );
          },
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(color: Colors.transparent),
        ),
      ],
    );
  }

  Widget _buildBlob(Color color, double x, double y, double size, double speedMultiplier) {
    final value = _controller.value * speedMultiplier * 2 * math.pi;
    final offsetX = math.sin(value) * 150;
    final offsetY = math.cos(value) * 150;

    return Positioned(
      left: MediaQuery.of(context).size.width * x + offsetX - size / 2,
      top: MediaQuery.of(context).size.height * y + offsetY - size / 2,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class FadeInSlide extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final double beginOffset;
  const FadeInSlide({super.key, required this.child, this.delay = Duration.zero, this.beginOffset = 0.15});

  @override
  State<FadeInSlide> createState() => _FadeInSlideState();
}

class _FadeInSlideState extends State<FadeInSlide> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fade;
  late Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    _fade = CurvedAnimation(parent: _controller, curve: const Interval(0, 0.6, curve: Curves.easeOut));
    _slide = Tween<Offset>(begin: Offset(0, widget.beginOffset), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0, 1.0, curve: Curves.elasticOut)),
    );
    Future.delayed(widget.delay, () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _fade, child: SlideTransition(position: _slide, child: widget.child));
  }
}

// ================== SPLASH SCREEN ==================

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _controller.forward().then((_) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainScreen()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MeshGradientBackground(),
          Center(
            child: FadeInSlide(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [AppTheme.primary, AppTheme.accent]),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [BoxShadow(color: AppTheme.primary.withOpacity(0.5), blurRadius: 30)],
                    ),
                    child: const Icon(Icons.auto_awesome, size: 50, color: Colors.white),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    "AURA",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900, letterSpacing: 8.0),
                  ),
                  const Text(
                    "EXPERIENCES",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 4.0, color: Colors.white38),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ================== MAIN SCREEN ==================

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  DateTime? _filterDate;
  String _selectedCategory = 'All';
  String _searchQuery = '';
  bool _isSearching = false;
  final _searchController = TextEditingController();
  
  final List<String> _categories = ['All', 'Music', 'Tech', 'Art', 'Design'];

  final List<Event> _events = [
    Event(
      id: '1',
      title: "Nebula Music Festival",
      date: DateTime.now().add(const Duration(days: 3)),
      venue: "Grand Arena, Virtual City",
      description: "An immersive audio-visual experience with top international artists and futuristic light shows.",
      category: "Music",
    ),
    Event(
      id: '2',
      title: "Future of Web 3.0",
      date: DateTime.now().add(const Duration(days: 7)),
      venue: "Tech Innovation Hub",
      description: "Deep dive into blockchain, decentralized apps, and the evolution of the internet as we know it.",
      category: "Tech",
    ),
    Event(
      id: '3',
      title: "Cyberpunk Art Expo",
      date: DateTime.now().add(const Duration(days: 12)),
      venue: "Neon Gallery",
      description: "Discover the neon-soaked world of cyberpunk art, from digital paintings to VR installations.",
      category: "Art",
    ),
  ];

  void _addEvent(Event event) => setState(() => _events.insert(0, event));
  
  void _toggleInterest(String id) {
    setState(() {
      final index = _events.indexWhere((e) => e.id == id);
      if (index != -1) _events[index].isInterested = !_events[index].isInterested;
    });
  }

  List<Event> _getFilteredEvents() {
    List<Event> base = _currentIndex == 1 ? _events.where((e) => e.isInterested).toList() : _events;

    return base.where((e) {
      final matchesSearch = e.title.toLowerCase().contains(_searchQuery.toLowerCase());
      final matchesCategory = _selectedCategory == 'All' || e.category == _selectedCategory;
      final matchesDate = _filterDate == null || 
          (e.date.year == _filterDate!.year && e.date.month == _filterDate!.month && e.date.day == _filterDate!.day);
      return matchesSearch && matchesCategory && matchesDate;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final filteredEvents = _getFilteredEvents();

    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          const MeshGradientBackground(),
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              _buildAppBar(),
              _buildStatsSummary(),
              if (_currentIndex == 0) _buildCategorySelector(),
              _buildFilterInfo(),
              _buildEventList(filteredEvents),
            ],
          ),
          _buildFloatingNavBar(),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    final showBackButton = _filterDate != null || _isSearching;

    return SliverAppBar(
      floating: true,
      backgroundColor: Colors.transparent,
      leading: showBackButton 
        ? IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => setState(() {
              _filterDate = null;
              _isSearching = false;
              _searchQuery = '';
              _searchController.clear();
            }),
          )
        : null,
      title: _isSearching 
        ? TextField(
            controller: _searchController,
            autofocus: true,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            decoration: const InputDecoration(hintText: "Search experiences...", border: InputBorder.none),
            onChanged: (val) => setState(() => _searchQuery = val),
          )
        : Text(
            _currentIndex == 0 ? "Aura Events" : "Favorites",
            style: const TextStyle(letterSpacing: -1.0, fontWeight: FontWeight.w900),
          ),
      actions: [
        if (!_isSearching)
          IconButton(
            icon: const Icon(Icons.search_rounded, size: 28),
            onPressed: () => setState(() => _isSearching = true),
          ),
        if (_currentIndex == 0 && !_isSearching)
          IconButton(
            icon: Icon(_filterDate == null ? Icons.calendar_today_outlined : Icons.calendar_month, 
                color: _filterDate == null ? Colors.white : AppTheme.info),
            onPressed: () async {
              final d = await showDatePicker(
                context: context, 
                initialDate: _filterDate ?? DateTime.now(), 
                firstDate: DateTime(2024), 
                lastDate: DateTime(2100)
              );
              if (d != null) setState(() => _filterDate = d);
            },
          ),
        const SizedBox(width: 8),
      ],
    );
  }

  Widget _buildFilterInfo() {
    if (_filterDate == null) return const SliverToBoxAdapter(child: SizedBox.shrink());
    
    return SliverToBoxAdapter(
      child: FadeInSlide(
        beginOffset: 0.05,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          decoration: BoxDecoration(
            color: AppTheme.info.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppTheme.info.withOpacity(0.2)),
          ),
          child: Row(
            children: [
              const Icon(Icons.info_outline_rounded, size: 20, color: AppTheme.info),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  "Filtered by: ${DateFormat('MMM dd, yyyy').format(_filterDate!)}",
                  style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.info, fontSize: 13),
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => _filterDate = null),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(color: AppTheme.info.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
                  child: const Text("Show All", style: TextStyle(fontWeight: FontWeight.w900, color: AppTheme.info, fontSize: 12)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatsSummary() {
    return SliverToBoxAdapter(
      child: FadeInSlide(
        delay: const Duration(milliseconds: 100),
        child: Container(
          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.04),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white.withOpacity(0.08)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem("${_events.length}", "Total"),
              Container(width: 1, height: 30, color: Colors.white10),
              _buildStatItem("${_events.where((e) => e.isInterested).length}", "Favorites"),
              Container(width: 1, height: 30, color: Colors.white10),
              _buildStatItem("${_events.where((e) => e.date.isAfter(DateTime.now())).length}", "Upcoming"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String val, String label) {
    return Column(
      children: [
        Text(val, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: AppTheme.info)),
        Text(label, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white38, letterSpacing: 1.2)),
      ],
    );
  }

  Widget _buildCategorySelector() {
    return SliverToBoxAdapter(
      child: FadeInSlide(
        delay: const Duration(milliseconds: 200),
        beginOffset: 0.05,
        child: Container(
          height: 60,
          margin: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: _categories.length,
            itemBuilder: (context, index) {
              final cat = _categories[index];
              final isSelected = _selectedCategory == cat;
              return GestureDetector(
                onTap: () => setState(() => _selectedCategory = cat),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutCubic,
                  margin: const EdgeInsets.only(right: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                  decoration: BoxDecoration(
                    gradient: isSelected 
                      ? const LinearGradient(colors: [AppTheme.primary, AppTheme.secondary])
                      : LinearGradient(colors: [Colors.white.withOpacity(0.05), Colors.white.withOpacity(0.02)]),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: isSelected ? Colors.white24 : Colors.white10),
                    boxShadow: isSelected ? [BoxShadow(color: AppTheme.primary.withOpacity(0.3), blurRadius: 20, offset: const Offset(0, 10))] : [],
                  ),
                  child: Center(
                    child: Text(
                      cat,
                      style: TextStyle(fontWeight: FontWeight.w800, color: isSelected ? Colors.white : Colors.white60),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildEventList(List<Event> events) {
    if (events.isEmpty) {
      return SliverFillRemaining(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.blur_on_rounded, size: 80, color: Colors.white24),
              const SizedBox(height: 16),
              Text(
                _currentIndex == 1 ? "No favorites yet" : "Nothing found",
                style: const TextStyle(color: Colors.white38, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              if (_filterDate != null)
                TextButton(
                  onPressed: () => setState(() => _filterDate = null),
                  child: const Text("Reset Date Filter", style: TextStyle(color: AppTheme.info, fontWeight: FontWeight.w900)),
                ),
            ],
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 140),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => _EventCard(
            event: events[index],
            index: index,
            onToggle: () => _toggleInterest(events[index].id),
          ),
          childCount: events.length,
        ),
      ),
    );
  }

  Widget _buildFloatingNavBar() {
    return Positioned(
      bottom: 40,
      left: 30,
      right: 30,
      child: FadeInSlide(
        delay: const Duration(milliseconds: 500),
        beginOffset: 0.2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(35),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: Colors.white.withOpacity(0.12)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _NavBarItem(icon: Icons.grid_view_rounded, isSelected: _currentIndex == 0, onTap: () => setState(() => _currentIndex = 0)),
                  _buildAddButton(),
                  _NavBarItem(icon: Icons.favorite_rounded, isSelected: _currentIndex == 1, onTap: () => setState(() => _currentIndex = 1)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () async {
        final res = await Navigator.push(context, _createRoute(const AddEventScreen()));
        if (res != null) _addEvent(res as Event);
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [AppTheme.accent, AppTheme.secondary]),
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: AppTheme.accent.withOpacity(0.4), blurRadius: 20, spreadRadius: -2)],
        ),
        child: const Icon(Icons.add_rounded, size: 36, color: Colors.white),
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;
  const _NavBarItem({required this.icon, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Icon(
          icon, 
          key: ValueKey(isSelected),
          size: 30, 
          color: isSelected ? AppTheme.info : Colors.white38
        ),
      ),
    );
  }
}

// ================== EVENT CARD ==================

class _EventCard extends StatefulWidget {
  final Event event;
  final int index;
  final VoidCallback onToggle;

  const _EventCard({required this.event, required this.index, required this.onToggle, super.key});

  @override
  State<_EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<_EventCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return FadeInSlide(
      delay: Duration(milliseconds: widget.index * 150),
      child: AnimatedScale(
        scale: _isPressed ? 0.96 : 1.0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic,
        child: Container(
          margin: const EdgeInsets.only(bottom: 24),
          child: GestureDetector(
            onTapDown: (_) => setState(() => _isPressed = true),
            onTapUp: (_) => setState(() => _isPressed = false),
            onTapCancel: () => setState(() => _isPressed = false),
            onTap: () => Navigator.push(context, _createRoute(EventDetailsScreen(event: widget.event))),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.04),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white.withOpacity(0.08)),
              ),
              child: Row(
                children: [
                  Hero(
                    tag: 'img_${widget.event.id}',
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [AppTheme.primary.withOpacity(0.3), AppTheme.secondary.withOpacity(0.6)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Center(
                        child: Icon(
                          _getIcon(widget.event.category),
                          size: 44,
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.event.title,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                        _buildSmallInfo(Icons.calendar_month_rounded, _getRelativeDate(widget.event.date)),
                        const SizedBox(height: 4),
                        _buildSmallInfo(Icons.location_on_rounded, widget.event.venue),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      widget.event.isInterested ? Icons.favorite_rounded : Icons.favorite_border_rounded, 
                      color: widget.event.isInterested ? AppTheme.accent : Colors.white24
                    ),
                    onPressed: widget.onToggle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _getRelativeDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final thatDay = DateTime(date.year, date.month, date.day);
    
    if (thatDay == today) return "Today";
    if (thatDay == today.add(const Duration(days: 1))) return "Tomorrow";
    return DateFormat('MMM dd, yyyy').format(date);
  }

  IconData _getIcon(String cat) {
    switch (cat) {
      case 'Music': return Icons.music_note_rounded;
      case 'Tech': return Icons.rocket_launch_rounded;
      case 'Design': return Icons.auto_awesome_mosaic_rounded;
      case 'Art': return Icons.palette_rounded;
      default: return Icons.event_rounded;
    }
  }

  Widget _buildSmallInfo(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 14, color: Colors.white30),
        const SizedBox(width: 6),
        Expanded(child: Text(text, style: const TextStyle(color: Colors.white38, fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis)),
      ],
    );
  }
}

// ================== SCREENS ==================

class AddEventScreen extends StatefulWidget {
  const AddEventScreen({super.key});

  @override
  State<AddEventScreen> createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  final _titleController = TextEditingController();
  final _venueController = TextEditingController();
  final _descController = TextEditingController();
  String _category = 'Music';
  DateTime _date = DateTime.now().add(const Duration(days: 1));
  final List<String> _genres = ['Music', 'Tech', 'Art', 'Design'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MeshGradientBackground(),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInSlide(
                    beginOffset: -0.1,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context), 
                      icon: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.05), shape: BoxShape.circle),
                        child: const Icon(Icons.arrow_back_ios_new_rounded, size: 20)
                      )
                    ),
                  ),
                  const SizedBox(height: 30),
                  const FadeInSlide(
                    child: Text("Launch \nExperience", style: TextStyle(fontSize: 42, fontWeight: FontWeight.w900, height: 1.0, letterSpacing: -1.5)),
                  ),
                  const SizedBox(height: 40),
                  _buildInput("Event Title", _titleController, delay: 100),
                  _buildInput("Venue", _venueController, delay: 200),
                  _buildInput("Description", _descController, maxLines: 3, delay: 300),
                  _buildGenreSelector(delay: 400),
                  const SizedBox(height: 30),
                  _buildDatePicker(delay: 500),
                  const SizedBox(height: 50),
                  _buildSubmitButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInput(String label, TextEditingController controller, {int maxLines = 1, int delay = 0}) {
    return FadeInSlide(
      delay: Duration(milliseconds: delay),
      child: Container(
        margin: const EdgeInsets.only(bottom: 24),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.04),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white.withOpacity(0.08)),
        ),
        child: TextField(
          controller: controller,
          maxLines: maxLines,
          style: const TextStyle(fontWeight: FontWeight.w600),
          decoration: InputDecoration(labelText: label, border: InputBorder.none, labelStyle: const TextStyle(color: Colors.white38)),
        ),
      ),
    );
  }

  Widget _buildGenreSelector({int delay = 0}) {
    return FadeInSlide(
      delay: Duration(milliseconds: delay),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0, bottom: 12),
            child: Text("EXPERIENCE GENRE", style: TextStyle(color: Colors.white24, fontWeight: FontWeight.w900, letterSpacing: 1.5, fontSize: 12)),
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: _genres.map((genre) {
              final isSelected = _category == genre;
              return GestureDetector(
                onTap: () => setState(() => _category = genre),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  decoration: BoxDecoration(
                    gradient: isSelected 
                      ? const LinearGradient(colors: [AppTheme.primary, AppTheme.info])
                      : LinearGradient(colors: [Colors.white.withOpacity(0.05), Colors.white.withOpacity(0.02)]),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: isSelected ? Colors.white24 : Colors.white10),
                  ),
                  child: Text(
                    genre,
                    style: TextStyle(fontWeight: FontWeight.w900, color: isSelected ? Colors.white : Colors.white60),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildDatePicker({int delay = 0}) {
    return FadeInSlide(
      delay: Duration(milliseconds: delay),
      child: InkWell(
        onTap: () async {
          final d = await showDatePicker(context: context, initialDate: _date, firstDate: DateTime.now(), lastDate: DateTime(2100));
          if (d != null) setState(() => _date = d);
        },
        borderRadius: BorderRadius.circular(25),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.04),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white.withOpacity(0.08)),
          ),
          child: Row(
            children: [
              const Icon(Icons.calendar_today_rounded, color: AppTheme.info),
              const SizedBox(width: 16),
              Text(DateFormat('EEEE, MMM dd').format(_date), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
              const Spacer(),
              const Icon(Icons.edit_calendar_rounded, color: Colors.white24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return FadeInSlide(
      delay: const Duration(milliseconds: 600),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ElevatedButton(
          onPressed: () {
            if (_titleController.text.isEmpty) return;
            Navigator.pop(context, Event(
              id: DateTime.now().toString(),
              title: _titleController.text,
              venue: _venueController.text,
              description: _descController.text,
              date: _date,
              category: _category,
            ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
          child: Ink(
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [AppTheme.primary, AppTheme.secondary]),
              borderRadius: BorderRadius.circular(25),
              boxShadow: [BoxShadow(color: AppTheme.primary.withOpacity(0.3), blurRadius: 20, offset: const Offset(0, 10))],
            ),
            child: const Center(
              child: Text("LAUNCH NOW", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 2.0)),
            ),
          ),
        ),
      ),
    );
  }
}

class EventDetailsScreen extends StatelessWidget {
  final Event event;
  const EventDetailsScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const MeshGradientBackground(),
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                expandedHeight: 450,
                pinned: true,
                stretch: true,
                backgroundColor: AppTheme.bg,
                flexibleSpace: FlexibleSpaceBar(
                  stretchModes: const [StretchMode.zoomBackground, StretchMode.blurBackground],
                  background: Hero(
                    tag: 'img_${event.id}',
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [AppTheme.primary, AppTheme.accent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: -50,
                            right: -50,
                            child: Icon(_getIcon(event.category), size: 300, color: Colors.white10),
                          ),
                          Center(
                            child: Icon(_getIcon(event.category), size: 140, color: Colors.white24),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInSlide(
                        child: Text(event.title, style: const TextStyle(fontSize: 44, fontWeight: FontWeight.w900, height: 1.0, letterSpacing: -2.0)),
                      ),
                      const SizedBox(height: 30),
                      _buildTicketInfo(),
                      const SizedBox(height: 40),
                      const FadeInSlide(delay: Duration(milliseconds: 300), child: Text("THE EXPERIENCE", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900, color: AppTheme.info, letterSpacing: 2.0))),
                      const SizedBox(height: 16),
                      FadeInSlide(
                        delay: const Duration(milliseconds: 400),
                        child: Text(event.description, style: const TextStyle(fontSize: 18, color: Colors.white70, height: 1.6, fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 60),
                      FadeInSlide(delay: const Duration(milliseconds: 500), child: _buildJoinButton(context)),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 50,
            left: 20,
            child: SafeArea(
              child: IconButton(
                onPressed: () => Navigator.pop(context), 
                icon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
                  child: const Icon(Icons.arrow_back_ios_new_rounded, size: 20, color: Colors.white)
                )
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTicketInfo() {
    return FadeInSlide(
      delay: const Duration(milliseconds: 100),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.04),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white.withOpacity(0.08)),
        ),
        child: Column(
          children: [
            _buildTicketRow(Icons.calendar_month_rounded, "DATE", DateFormat('EEEE, MMMM dd').format(event.date)),
            const Padding(padding: EdgeInsets.symmetric(vertical: 12), child: Divider(color: Colors.white10)),
            _buildTicketRow(Icons.location_on_rounded, "LOCATION", event.venue),
            const Padding(padding: EdgeInsets.symmetric(vertical: 12), child: Divider(color: Colors.white10)),
            _buildTicketRow(Icons.confirmation_num_rounded, "TICKET TYPE", "VIRTUAL ACCESS"),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, size: 24, color: AppTheme.info),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w900, color: Colors.white24, letterSpacing: 1.5)),
            Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
      ],
    );
  }

  IconData _getIcon(String cat) {
    switch (cat) {
      case 'Music': return Icons.music_note_rounded;
      case 'Tech': return Icons.rocket_launch_rounded;
      case 'Design': return Icons.auto_awesome_mosaic_rounded;
      case 'Art': return Icons.palette_rounded;
      default: return Icons.event_rounded;
    }
  }

  Widget _buildJoinButton(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppTheme.primary,
            content: const Text("Experience Reserved! Check your email for the invite.", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [AppTheme.primary, AppTheme.secondary]),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [BoxShadow(color: AppTheme.primary.withOpacity(0.3), blurRadius: 25, offset: const Offset(0, 12))],
        ),
        child: const Center(child: Text("RESERVE SPOT", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 2.0))),
      ),
    );
  }
}

// ================== UTILS ==================

Route _createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.easeOutQuart;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}