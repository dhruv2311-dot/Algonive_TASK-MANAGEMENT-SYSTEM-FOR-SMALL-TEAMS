# 📋 Task Management System for Small Teams

**Algonive - Web Development Internship Task-2**

A full-stack MERN (MongoDB, Express, React, Node.js) web application designed for small teams to efficiently assign, track, and manage daily tasks with a professional, modern UI.

![Tech Stack](https://img.shields.io/badge/MongoDB-Atlas-green)
![Express.js](https://img.shields.io/badge/Express.js-4.x-blue)
![React](https://img.shields.io/badge/React-18.x-blue)
![Node.js](https://img.shields.io/badge/Node.js-18.x-green)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-3.x-blue)

---

## 🌟 Features

### ✅ Core Features
- **Secure Authentication** - JWT-based signup/login system with bcrypt password hashing
- **Team Management** - Create teams, add/remove members, manage team settings
- **Task Assignment** - Assign tasks to team members with detailed information
- **Task Status Tracking** - Track tasks through Pending → In Progress → Completed
- **Priority Levels** - Set task priorities (Low, Medium, High)
- **Deadline Management** - Set due dates with visual indicators for overdue tasks
- **Real-time Notifications** - Get notified about task assignments, status changes, and deadlines
- **Email Reminders** - Automated email notifications for upcoming deadlines (via nodemailer)
- **Kanban Board** - Visual task board with drag-and-drop columns
- **Dashboard Analytics** - View task statistics and team performance
- **Search & Filter** - Find tasks quickly with search and filter options
- **Responsive Design** - Works seamlessly on desktop, tablet, and mobile devices

### 🎨 UI/UX Highlights
- **Modern Professional Design** - Clean, minimalist interface with smooth animations
- **Color-coded Priorities** - Visual indicators for task urgency
- **Intuitive Navigation** - Easy-to-use sidebar and navigation system
- **Toast Notifications** - Real-time feedback for user actions
- **Loading States** - Skeleton screens and spinners for better UX
- **Gradient Cards** - Beautiful gradient backgrounds for stats cards

---

## 🛠️ Tech Stack

### Frontend
- **React 18** - Modern UI library with hooks
- **Vite** - Fast build tool and dev server
- **React Router v6** - Client-side routing
- **Axios** - HTTP client for API calls
- **TailwindCSS** - Utility-first CSS framework
- **Lucide React** - Beautiful icon library
- **date-fns** - Modern date utility library
- **React Hot Toast** - Toast notifications

### Backend
- **Node.js** - JavaScript runtime
- **Express.js** - Web application framework
- **MongoDB Atlas** - Cloud database
- **Mongoose** - MongoDB object modeling
- **JWT** - JSON Web Tokens for authentication
- **bcryptjs** - Password hashing
- **nodemailer** - Email sending
- **node-cron** - Task scheduling for reminders
- **CORS** - Cross-origin resource sharing

---

## 📁 Project Structure

```
Algonive - task management/
├── backend/
│   ├── models/
│   │   ├── User.js              # User schema
│   │   ├── Team.js              # Team schema
│   │   ├── Task.js              # Task schema
│   │   └── Notification.js      # Notification schema
│   ├── routes/
│   │   ├── authRoutes.js        # Authentication endpoints
│   │   ├── teamRoutes.js        # Team management endpoints
│   │   ├── taskRoutes.js        # Task CRUD endpoints
│   │   └── notificationRoutes.js # Notification endpoints
│   ├── utils/
│   │   ├── authMiddleware.js    # JWT verification middleware
│   │   ├── emailService.js      # Email sending utilities
│   │   └── reminderJob.js       # Cron job for deadline reminders
│   ├── server.js                # Main server file
│   ├── package.json
│   ├── .env.example
│   └── .gitignore
│
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── Navbar.jsx           # Navigation bar
│   │   │   ├── TaskCard.jsx         # Task card component
│   │   │   └── NotificationPanel.jsx # Notification sidebar
│   │   ├── pages/
│   │   │   ├── Login.jsx            # Login page
│   │   │   ├── Signup.jsx           # Signup page
│   │   │   ├── Dashboard.jsx        # Main dashboard
│   │   │   ├── TaskBoard.jsx        # Kanban board view
│   │   │   ├── TaskForm.jsx         # Create/Edit task
│   │   │   └── TeamPage.jsx         # Team management
│   │   ├── context/
│   │   │   └── AuthContext.jsx      # Authentication context
│   │   ├── services/
│   │   │   └── api.js               # API service layer
│   │   ├── App.jsx                  # Main app component
│   │   ├── main.jsx                 # Entry point
│   │   └── index.css                # Global styles
│   ├── package.json
│   ├── vite.config.js
│   ├── tailwind.config.js
│   ├── .env.example
│   └── .gitignore
│
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites
- **Node.js** (v18 or higher)
- **MongoDB Atlas Account** (free tier works)
- **Gmail Account** (for email notifications - optional)

### 1. Clone the Repository
```bash
git clone <repository-url>
cd "Algonive - task management"
```

### 2. Backend Setup

#### Install Dependencies
```bash
cd backend
npm install
```

#### Configure Environment Variables
Create a `.env` file in the `backend` directory:

```env
PORT=5000
MONGODB_URL=YOUR_MONGODB_URL
JWT_SECRET=your_super_secret_jwt_key_change_this_in_production
EMAIL_USER=your_email@gmail.com
EMAIL_PASS=your_gmail_app_password
FRONTEND_URL=http://localhost:5173
```

**Getting MongoDB Atlas URL:**
1. Go to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas)
2. Create a free cluster
3. Click "Connect" → "Connect your application"
4. Copy the connection string and replace `<password>` with your database password

**Getting Gmail App Password:**
1. Enable 2-Factor Authentication on your Gmail account
2. Go to Google Account → Security → 2-Step Verification → App passwords
3. Generate a new app password for "Mail"
4. Use this password in `EMAIL_PASS`

#### Start Backend Server
```bash
npm start
# or for development with auto-reload
npm run dev
```

Server will run on `http://localhost:5000`

### 3. Frontend Setup

#### Install Dependencies
```bash
cd ../frontend
npm install
```

#### Configure Environment Variables
Create a `.env` file in the `frontend` directory:

```env
VITE_API_URL=http://localhost:5000/api
```

#### Start Frontend Development Server
```bash
npm run dev
```

Frontend will run on `http://localhost:5173`

---

## 📚 API Documentation

### Authentication Endpoints

#### POST `/api/auth/signup`
Register a new user
```json
{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "password123",
  "role": "member"
}
```

#### POST `/api/auth/login`
Login user
```json
{
  "email": "john@example.com",
  "password": "password123"
}
```

#### GET `/api/auth/me`
Get current user (requires authentication)

### Team Endpoints

#### POST `/api/teams`
Create a new team
```json
{
  "name": "Engineering Team",
  "description": "Frontend development team",
  "color": "#6366f1"
}
```

#### GET `/api/teams`
Get all teams for current user

#### GET `/api/teams/:id`
Get team by ID

#### POST `/api/teams/:id/add-member`
Add member to team
```json
{
  "email": "member@example.com"
}
```

### Task Endpoints

#### POST `/api/tasks`
Create a new task
```json
{
  "title": "Implement login page",
  "description": "Create responsive login page with validation",
  "team": "team_id",
  "assignee": "user_id",
  "status": "pending",
  "priority": "high",
  "dueDate": "2024-12-31",
  "tags": ["frontend", "urgent"]
}
```

#### GET `/api/tasks`
Get all tasks (supports filters: `team`, `status`, `assignee`, `priority`, `search`)

#### GET `/api/tasks/:id`
Get task by ID

#### PUT `/api/tasks/:id`
Update task

#### DELETE `/api/tasks/:id`
Delete task

### Notification Endpoints

#### GET `/api/notifications`
Get all notifications

#### PUT `/api/notifications/:id/read`
Mark notification as read

#### PUT `/api/notifications/read-all`
Mark all notifications as read

---

## 🎯 Usage Guide

### 1. Create an Account
- Navigate to the signup page
- Fill in your details (name, email, password)
- Choose your role (member or admin)
- Click "Create Account"

### 2. Create a Team
- Go to the Teams page
- Click "Create Team"
- Enter team name, description, and choose a color
- Click "Create Team"

### 3. Add Team Members
- Select a team from the Teams page
- Click "Add Member"
- Enter the email of an existing user
- Click "Add Member"

### 4. Create a Task
- Click "Create New Task" from the dashboard
- Fill in task details:
  - Title (required)
  - Description
  - Select team (required)
  - Assign to a team member
  - Set status, priority, and due date
  - Add tags (optional)
- Click "Create Task"

### 5. Manage Tasks
- View all tasks on the Dashboard
- Use the Kanban board for visual task management
- Click on any task to edit or update its status
- Filter tasks by status or assignee
- Search for specific tasks

### 6. Notifications
- Click the bell icon to view notifications
- Get notified about:
  - Task assignments
  - Status changes
  - Upcoming deadlines
  - Team invitations

---

## ⚙️ Features in Detail

### Automated Deadline Reminders
The system runs a cron job every 10 minutes to check for tasks due within the next 24 hours. It automatically:
- Creates in-app notifications
- Sends email reminders to assignees
- Prevents duplicate notifications within 6 hours

### Email Notifications
Beautiful HTML email templates for:
- **Task Assignment** - When a task is assigned to you
- **Deadline Reminder** - When a task is due soon
- **Status Change** - When task status is updated

### Task Priority System
- **High** - Red badge, urgent tasks
- **Medium** - Yellow badge, normal priority
- **Low** - Green badge, can wait

### Task Status Flow
```
Pending → In Progress → Completed
```

---

## 🧪 Testing Checklist

- [x] User signup with validation
- [x] User login with JWT token
- [x] Token persistence in localStorage
- [x] Protected routes (redirect to login if not authenticated)
- [x] Create team functionality
- [x] Add members to team
- [x] Create task with all fields
- [x] Update task status
- [x] Delete task
- [x] View notifications
- [x] Mark notifications as read
- [x] Email reminders (if configured)
- [x] Responsive design on mobile
- [x] MongoDB Atlas connection
- [x] Error handling and toast messages

---

## 🚢 Deployment

### Backend Deployment (Render/Railway/Heroku)

1. **Render.com** (Recommended - Free tier available)
   - Create a new Web Service
   - Connect your GitHub repository
   - Set build command: `cd backend && npm install`
   - Set start command: `cd backend && npm start`
   - Add environment variables from `.env`
   - Deploy

2. **Railway.app**
   - Create new project
   - Deploy from GitHub
   - Add environment variables
   - Deploy

### Frontend Deployment (Vercel/Netlify)

1. **Vercel** (Recommended)
   ```bash
   cd frontend
   npm run build
   vercel --prod
   ```

2. **Netlify**
   ```bash
   cd frontend
   npm run build
   # Drag and drop the 'dist' folder to Netlify
   ```

**Important:** Update `VITE_API_URL` in frontend `.env` to your deployed backend URL.

---

## 🎨 UI Screenshots

The application features a modern, professional design with:
- Gradient stat cards on the dashboard
- Clean Kanban board with color-coded columns
- Smooth animations and transitions
- Responsive layout for all screen sizes
- Beautiful notification panel
- Intuitive task cards with priority indicators

---

## 🔒 Security Features

- **Password Hashing** - bcrypt with salt rounds
- **JWT Authentication** - Secure token-based auth
- **Protected Routes** - Server-side authentication middleware
- **Input Validation** - Server and client-side validation
- **CORS Configuration** - Controlled cross-origin requests
- **Environment Variables** - Sensitive data in .env files

---

## 🐛 Troubleshooting

### Backend won't start
- Check if MongoDB URL is correct
- Ensure port 5000 is not in use
- Verify all environment variables are set

### Frontend can't connect to backend
- Check if backend is running
- Verify `VITE_API_URL` in frontend `.env`
- Check CORS configuration in backend

### Email notifications not working
- Verify Gmail credentials
- Enable "Less secure app access" or use App Password
- Check EMAIL_USER and EMAIL_PASS in `.env`

### MongoDB connection failed
- Check MongoDB Atlas IP whitelist (allow 0.0.0.0/0 for development)
- Verify database user credentials
- Ensure network access is configured

---

## 📝 License

This project is created for educational purposes as part of the Algonive Web Development Internship.

---

## 👨‍💻 Author

**Algonive Web Development Internship - Task 2**

---

## 🙏 Acknowledgments

- MongoDB Atlas for cloud database
- Vercel/Netlify for hosting
- TailwindCSS for styling
- Lucide React for icons
- React Hot Toast for notifications

---

## 📧 Support

For any queries or issues, please create an issue in the repository or contact the development team.

---

**Happy Task Managing! 🚀**
