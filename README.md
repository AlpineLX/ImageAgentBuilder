# ImageAgentBuilder

B/S 架构应用，帮助智能体构建师通过科学方法快速构建面向特定目标的图像生成智能体。

## 核心概念

- **智能体构建师**: 使用本应用的用户
- **目标智能体**: 用户想要构建的图像生成智能体
- **辅助智能体**: 应用内置的 AI 助手，帮助构建师优化目标智能体

## 主要功能

1. **项目管理** - 管理多个智能体构建项目
2. **智能体初始化** - 设置目标智能体的基本信息和初始提示词
3. **样例管理** - 上传参考图像和描述
4. **智能优化** - 辅助智能体根据反馈自动调整参数
5. **版本管理** - 记录每个版本的配置和生成效果
6. **人机协作** - 在适当时机请求构建师反馈
7. **配置导出** - 导出可部署的智能体配置文件

## 技术栈

| 层级 | 技术 |
|------|------|
| 前端 | React + Vite |
| 后端 | Supabase |
| 智能体框架 | Claude Agent SDK |
| 图像模型 | Google Nano Banana 2 |

## 项目结构

```
ImageAgentBuilder/
├── frontend/           # React 前端应用
├── supabase/          # Supabase 配置和迁移
├── docs/              # 文档
├── feature_list.json  # 功能列表
├── claude-progress.txt # 进度日志
└── init.sh            # 开发环境启动脚本
```

## 快速开始

```bash
# 1. 克隆项目
git clone https://github.com/AlpineLX/ImageAgentBuilder.git
cd ImageAgentBuilder

# 2. 配置环境变量
cp .env.example .env.local
# 编辑 .env.local 填入你的 API Keys

# 3. 启动开发环境
./init.sh
```

## 环境变量

| 变量名 | 说明 |
|--------|------|
| VITE_SUPABASE_URL | Supabase 项目 URL |
| VITE_SUPABASE_ANON_KEY | Supabase 匿名密钥 |
| GOOGLE_AI_API_KEY | Google AI API 密钥 (Nano Banana 2) |

## 开发进度

查看 [feature_list.json](./feature_list.json) 了解功能完成情况。
查看 [claude-progress.txt](./claude-progress.txt) 了解详细进度记录。
