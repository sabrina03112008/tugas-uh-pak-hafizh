# tugas-uh-pak-hafizh

deskripsi: 
Aplikasi sederhana untuk mencatat daftar tugas harian (To Do List) menggunakan Flutter dan Provider sebagai state management.

struktur project:
lib/
│
├── models/
│ └── todo.dart # Model data Todo
│
├── providers/
│ └── todo_provider.dart # State management (Provider + ChangeNotifier)
│
├── screens/
│ ├── home_screen.dart # Halaman utama (daftar & tambah todo)
│ └── detail_screen.dart # Halaman detail todo
│
├── widgets/
│ └── todo_item.dart # Widget custom untuk menampilkan tiap todo
│
└── main.dart # Entry point aplikasi




MaterialApp:
└── HomeScreen
├── AppBar
├── Column
│ ├── Row -> TextField + Tombol Add
│ └── Expanded -> ListView.builder
│ └── TodoItem
└── FloatingActionButton

State Management
Aplikasi ini memakai **Provider + ChangeNotifier**.  

- Data tugas disimpan di `TodoProvider`.  
- Widget mengambil data dengan `Provider.of<TodoProvider>(context)`.  
- Setiap kali ada perubahan (tambah, ubah status, hapus) → `notifyListeners()` akan memicu rebuild UI otomatis.



Provider?
- Mudah dipakai untuk pemula  
- Direkomendasikan oleh Flutter team  
- Cocok untuk aplikasi kecil hingga menengah  
- UI langsung terupdate tanpa kode tambahan yang rumit

# DEMO #

<img width="1920" height="1080" alt="Screenshot (778)" src="https://github.com/user-attachments/assets/af994bac-f79b-413a-807e-63a70850ae36" />
<img width="1920" height="1080" alt="Screenshot (777)" src="https://github.com/user-attachments/assets/9574139d-cd79-452a-b14b-ee56ec237851" />
<img width="1920" height="1080" alt="Screenshot (776)" src="https://github.com/user-attachments/assets/d8880538-8a33-4995-80b6-fbe5970e35e6" />
<img width="1920" height="1080" alt="Screenshot (775)" src="https://github.com/user-attachments/assets/9da546bb-be97-4f71-b549-dd3c1091b419" />
<img width="1920" height="1080" alt="Screenshot (774)" src="https://github.com/user-attachments/assets/07da10c3-423c-4ea8-9103-5b3d8a95566e" />
<img width="1920" height="1080" alt="Screenshot (773)" src="https://github.com/user-attachments/assets/ae461be2-6aef-4991-b538-af8f58108f7e" />
<img width="1920" height="1080" alt="Screenshot (779)" src="https://github.com/user-attachments/assets/28cd450e-d169-4ab8-a7d3-09033f49222d" />
<img width="1920" height="1080" alt="Screenshot (772)" src="https://github.com/user-attachments/assets/18ac2a6b-f335-438d-976b-1d4bfaff8ace" />
