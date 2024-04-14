.class public Lkawa/GuiConsole;
.super Ljavax/swing/JFrame;
.source "GuiConsole.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Lkawa/ReplDocument$DocumentCloseListener;


# static fields
.field private static CLOSE:Ljava/lang/String; = "Close"

.field private static EXIT:Ljava/lang/String; = "Exit"

.field private static NEW:Ljava/lang/String; = "New"

.field private static NEW_SHARED:Ljava/lang/String; = "New (Shared)"

.field private static PURGE_MESSAGE:Ljava/lang/String; = "Purge Buffer"

.field static window_number:I


# instance fields
.field document:Lkawa/ReplDocument;

.field pane:Lkawa/ReplPane;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 1

    const-string v0, "Kawa"

    .line 64
    invoke-direct {p0, v0}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 66
    new-instance v0, Lkawa/ReplDocument;

    invoke-direct {v0, p1, p2, p3}, Lkawa/ReplDocument;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    invoke-virtual {p0, v0}, Lkawa/GuiConsole;->init(Lkawa/ReplDocument;)V

    return-void
.end method

.method public constructor <init>(Lkawa/ReplDocument;)V
    .locals 1

    const-string v0, "Kawa"

    .line 43
    invoke-direct {p0, v0}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lkawa/GuiConsole;->init(Lkawa/ReplDocument;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 28
    sput-boolean v0, Lkawa/repl;->noConsole:Z

    .line 29
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lkawa/repl;->processArgs([Ljava/lang/String;II)I

    move-result v0

    .line 30
    invoke-static {}, Lkawa/repl;->getLanguage()V

    .line 31
    invoke-static {p0, v0}, Lkawa/repl;->setArgs([Ljava/lang/String;I)V

    .line 32
    invoke-static {}, Lkawa/repl;->checkInitFile()V

    .line 33
    new-instance p0, Lkawa/GuiConsole;

    invoke-direct {p0}, Lkawa/GuiConsole;-><init>()V

    return-void
.end method

.method private setupMenus()V
    .locals 6

    .line 89
    new-instance v0, Lkawa/GuiConsole$1;

    invoke-direct {v0, p0}, Lkawa/GuiConsole$1;-><init>(Lkawa/GuiConsole;)V

    .line 96
    new-instance v1, Ljava/awt/MenuBar;

    invoke-direct {v1}, Ljava/awt/MenuBar;-><init>()V

    .line 97
    new-instance v2, Ljava/awt/Menu;

    const-string v3, "File"

    invoke-direct {v2, v3}, Ljava/awt/Menu;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v3, Ljava/awt/Menu;

    const-string v4, "Utilities"

    invoke-direct {v3, v4}, Ljava/awt/Menu;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v2}, Ljava/awt/MenuBar;->add(Ljava/awt/Menu;)Ljava/awt/Menu;

    .line 101
    invoke-virtual {v1, v3}, Ljava/awt/MenuBar;->add(Ljava/awt/Menu;)Ljava/awt/Menu;

    .line 103
    new-instance v4, Ljava/awt/MenuItem;

    sget-object v5, Lkawa/GuiConsole;->NEW:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 105
    invoke-virtual {v2, v4}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 107
    new-instance v4, Ljava/awt/MenuItem;

    sget-object v5, Lkawa/GuiConsole;->NEW_SHARED:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v4, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 109
    invoke-virtual {v2, v4}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 111
    new-instance v4, Ljava/awt/MenuItem;

    sget-object v5, Lkawa/GuiConsole;->CLOSE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v4, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 113
    invoke-virtual {v2, v4}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 115
    new-instance v4, Ljava/awt/MenuItem;

    sget-object v5, Lkawa/GuiConsole;->EXIT:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 117
    invoke-virtual {p0, v0}, Lkawa/GuiConsole;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 118
    invoke-virtual {v2, v4}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 120
    new-instance v0, Ljava/awt/MenuItem;

    sget-object v2, Lkawa/GuiConsole;->PURGE_MESSAGE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/awt/MenuItem;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p0}, Ljava/awt/MenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 122
    invoke-virtual {v3, v0}, Ljava/awt/Menu;->add(Ljava/awt/MenuItem;)Ljava/awt/MenuItem;

    .line 124
    invoke-virtual {p0, v1}, Lkawa/GuiConsole;->setMenuBar(Ljava/awt/MenuBar;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    .line 129
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getActionCommand()Ljava/lang/String;

    move-result-object p1

    .line 131
    sget-object v0, Lkawa/GuiConsole;->NEW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    new-instance p1, Lkawa/GuiConsole;

    iget-object v0, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    invoke-static {}, Lgnu/mapping/Environment;->getGlobal()Lgnu/mapping/Environment;

    move-result-object v2

    invoke-direct {p1, v0, v2, v1}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Lkawa/GuiConsole;->NEW_SHARED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    new-instance p1, Lkawa/GuiConsole;

    iget-object v0, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    iget-object v1, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    iget-object v1, v1, Lkawa/ReplDocument;->environment:Lgnu/mapping/Environment;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    goto :goto_0

    .line 135
    :cond_1
    sget-object v0, Lkawa/GuiConsole;->EXIT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 137
    :cond_2
    sget-object v0, Lkawa/GuiConsole;->CLOSE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {p0}, Lkawa/GuiConsole;->close()V

    goto :goto_0

    .line 139
    :cond_3
    sget-object v0, Lkawa/GuiConsole;->PURGE_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iget-object p1, p0, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    iget-object p1, p1, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    invoke-virtual {p1}, Lkawa/ReplDocument;->deleteOldText()V

    goto :goto_0

    .line 143
    :cond_4
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown menu action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method close()V
    .locals 1

    .line 78
    iget-object v0, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    invoke-virtual {v0, p0}, Lkawa/ReplDocument;->removeDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V

    .line 79
    invoke-virtual {p0}, Lkawa/GuiConsole;->dispose()V

    return-void
.end method

.method public closed(Lkawa/ReplDocument;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lkawa/GuiConsole;->close()V

    return-void
.end method

.method init(Lkawa/ReplDocument;)V
    .locals 2

    .line 49
    iput-object p1, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    .line 50
    invoke-virtual {p1, p0}, Lkawa/ReplDocument;->addDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V

    .line 51
    new-instance p1, Lkawa/ReplPane;

    iget-object v0, p0, Lkawa/GuiConsole;->document:Lkawa/ReplDocument;

    invoke-direct {p1, v0}, Lkawa/ReplPane;-><init>(Lkawa/ReplDocument;)V

    iput-object p1, p0, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    .line 52
    sget p1, Lkawa/GuiConsole;->window_number:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lkawa/GuiConsole;->window_number:I

    .line 53
    new-instance p1, Ljava/awt/BorderLayout;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Ljava/awt/BorderLayout;-><init>(II)V

    invoke-virtual {p0, p1}, Lkawa/GuiConsole;->setLayout(Ljava/awt/LayoutManager;)V

    .line 54
    new-instance p1, Ljavax/swing/JScrollPane;

    iget-object v1, p0, Lkawa/GuiConsole;->pane:Lkawa/ReplPane;

    invoke-direct {p1, v1}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v1, "Center"

    invoke-virtual {p0, v1, p1}, Lkawa/GuiConsole;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 55
    invoke-direct {p0}, Lkawa/GuiConsole;->setupMenus()V

    .line 57
    sget p1, Lkawa/GuiConsole;->window_number:I

    mul-int/lit8 v1, p1, 0x64

    mul-int/lit8 p1, p1, 0x32

    invoke-virtual {p0, v1, p1}, Lkawa/GuiConsole;->setLocation(II)V

    const/16 p1, 0x2bc

    const/16 v1, 0x1f4

    .line 58
    invoke-virtual {p0, p1, v1}, Lkawa/GuiConsole;->setSize(II)V

    .line 59
    invoke-virtual {p0, v0}, Lkawa/GuiConsole;->setVisible(Z)V

    return-void
.end method
