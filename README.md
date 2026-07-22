# Real-Time Collaborative Code Editor

A collaborative code editor that allows multiple users to edit the same document simultaneously. The project uses **Yjs CRDTs** with **Socket.IO** to synchronize changes in real time while ensuring conflict-free collaboration.

## Features
- Real-time collaborative editing
- Multiple users can edit simultaneously
- Automatic synchronization
- Conflict-free document updates using Yjs
- Express backend
- Socket.IO communication
- Production-ready static frontend serving

## Tech Stack

### Frontend
- React
- Monaco Editor
- Yjs
- y-monaco
- Socket.IO Client

### Backend
- Node.js
- Express.js
- Socket.IO
- y-socket.io

## API
### Health Check
```
GET /health
```
Response

```json
{
  "message": "ok",
  "success": true
}
```
