.class Lkawa/ReplDocument$1;
.super Lgnu/text/QueueReader;
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


# direct methods
.method constructor <init>(Lkawa/ReplDocument;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lkawa/ReplDocument$1;->this$0:Lkawa/ReplDocument;

    invoke-direct {p0}, Lgnu/text/QueueReader;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAvailable()V
    .locals 1

    .line 77
    iget-object v0, p0, Lkawa/ReplDocument$1;->this$0:Lkawa/ReplDocument;

    invoke-virtual {v0}, Lkawa/ReplDocument;->checkingPendingInput()V

    return-void
.end method
