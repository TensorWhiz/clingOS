
---

## **Day 0**

**日期：** 2024-12-26  
**开发者：** wywy

### **今日任务**
- 初始完成`src/linker.ld`编写

---

### **遇到的问题与解决方法**

#### **问题 1：**  
- **问题描述：**
    在 `src/main.rs` 文件中，`#![no_main]` 处出现 `error[E0463]: can't find crate for 'test'` 错误。

- **解决方法：**
    在 `settings.json` 中添加以下配置，以便支持目标平台：

    ```json
    {
        "rust-analyzer.check.allTargets": false,
        "rust-analyzer.check.extraArgs": [
            "--target",
            "riscv64gc-unknown-none-elf"
        ]
    }
    ```

---

预设模板：

---

## **Day X**

**日期：** YYYY-MM-DD  
**开发者：** [开发者姓名]

### **今日任务**
- [任务 1]
- [任务 2]
- [任务 3]

---

### **遇到的问题与解决方法**

#### **问题 1：**  
- **问题描述：**  
  [简要描述遇到的问题]  
- **解决方法：**  
  [简要描述解决方案或步骤]

#### **问题 2：**  
- **问题描述：**  
  [简要描述遇到的问题]  
- **解决方法：**  
  [简要描述解决方案或步骤]

#### **问题 3：**  
- **问题描述：**  
  [简要描述遇到的问题]  
- **解决方法：**  
  [简要描述解决方案或步骤]

---

### **后续计划**
- [计划 1]
- [计划 2]
- [计划 3]

---