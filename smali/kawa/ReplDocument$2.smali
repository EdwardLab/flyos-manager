.class Lkawa/ReplDocument$2;
.super Lkawa/repl;
.source "ReplDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument;-><init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplDocument;

.field final synthetic val$shared:Z


# direct methods
.method constructor <init>(Lkawa/ReplDocument;Lgnu/expr/Language;Z)V
    .locals 0

    .line 83
    iput-object p1, p0, Lkawa/ReplDocument$2;->this$0:Lkawa/ReplDocument;

    iput-boolean p3, p0, Lkawa/ReplDocument$2;->val$shared:Z

    invoke-direct {p0, p2}, Lkawa/repl;-><init>(Lgnu/expr/Language;)V

    return-void
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .locals 2

    .line 86
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 87
    iget-boolean v1, p0, Lkawa/ReplDocument$2;->val$shared:Z

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lgnu/mapping/Environment;->setIndirectDefines()V

    .line 89
    :cond_0
    iget-object v1, p0, Lkawa/ReplDocument$2;->this$0:Lkawa/ReplDocument;

    iput-object v0, v1, Lkawa/ReplDocument;->environment:Lgnu/mapping/Environment;

    .line 90
    iget-object v1, p0, Lkawa/ReplDocument$2;->language:Lgnu/expr/Language;

    invoke-static {v1, v0}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z

    .line 91
    new-instance v0, Lkawa/ReplDocument$2$1;

    invoke-direct {v0, p0}, Lkawa/ReplDocument$2$1;-><init>(Lkawa/ReplDocument$2;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 94
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method
