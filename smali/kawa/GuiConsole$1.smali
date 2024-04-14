.class Lkawa/GuiConsole$1;
.super Ljava/awt/event/WindowAdapter;
.source "GuiConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/GuiConsole;->setupMenus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/GuiConsole;


# direct methods
.method constructor <init>(Lkawa/GuiConsole;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lkawa/GuiConsole$1;->this$0:Lkawa/GuiConsole;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lkawa/GuiConsole$1;->this$0:Lkawa/GuiConsole;

    invoke-virtual {p1}, Lkawa/GuiConsole;->close()V

    return-void
.end method
