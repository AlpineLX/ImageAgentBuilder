#!/bin/bash

# ImageAgentBuilder 开发环境启动脚本
# 使用方法: ./init.sh

set -e

echo "🚀 启动 ImageAgentBuilder 开发环境..."

# 检查 Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js 未安装，请先安装 Node.js"
    exit 1
fi

echo "✅ Node.js 版本: $(node -v)"

# 检查 npm
if ! command -v npm &> /dev/null; then
    echo "❌ npm 未安装"
    exit 1
fi

echo "✅ npm 版本: $(npm -v)"

# 进入前端目录（如果存在）
if [ -d "frontend" ]; then
    echo "📦 安装前端依赖..."
    cd frontend
    npm install
    echo "🌟 启动前端开发服务器..."
    npm run dev &
    cd ..
else
    echo "⚠️  前端目录尚未创建，请先运行项目初始化"
fi

# 检查环境变量
if [ ! -f ".env.local" ]; then
    echo "⚠️  .env.local 文件不存在，请配置以下环境变量："
    echo "   - VITE_SUPABASE_URL"
    echo "   - VITE_SUPABASE_ANON_KEY"
    echo "   - GOOGLE_AI_API_KEY (用于 Nano Banana 2)"
fi

echo ""
echo "✅ 开发环境检查完成！"
echo "📝 下一步: 如果是首次运行，请告知 Claude 开始系统架构设计"
