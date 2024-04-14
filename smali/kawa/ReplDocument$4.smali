.class Lkawa/ReplDocument$4;
.super Ljava/lang/Object;
.source "ReplDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument;->checkingPendingInput()V
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

    .line 166
    iput-object p1, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 171
    iget-object v0, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v0, v0, Lkawa/ReplDocument;->outputMark:I

    .line 172
    iget-object v1, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v1, v1, Lkawa/ReplDocument;->endMark:I

    if-gt v0, v1, :cond_2

    .line 174
    iget-object v1, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v1, v1, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    iget-object v1, v1, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    const/16 v2, 0xa

    .line 175
    invoke-virtual {v1, v2, v0}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v2

    .line 176
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->endMark:I

    if-ne v2, v3, :cond_0

    .line 177
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    const/4 v4, -0x1

    iput v4, v3, Lkawa/ReplDocument;->endMark:I

    .line 178
    :cond_0
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->outputMark:I

    if-ne v0, v3, :cond_1

    .line 179
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    add-int/lit8 v4, v2, 0x1

    iput v4, v3, Lkawa/ReplDocument;->outputMark:I

    .line 180
    :cond_1
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v3, v3, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    monitor-enter v3

    .line 182
    :try_start_0
    iget-object v4, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v4, v4, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v1, v0, v2}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    .line 183
    iget-object v0, p0, Lkawa/ReplDocument$4;->this$0:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
