module.exports = {
  apps: [
    {
      name: 'gateway',
      script: 'server.js',
      exec_mode: 'fork',
      instances: 1,
      autorestart: true,
      watch: false,
      max_memory_restart: '192M',
      env: {
        NODE_ENV: 'production',
        PORT: 3000,
      },
    },
  ],
};
