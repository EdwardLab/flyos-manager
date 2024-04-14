.class Lkawa/ReplDocument$3;
.super Ljava/lang/Object;
.source "ReplDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplDocument;

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$style:Ljavax/swing/text/AttributeSet;


# direct methods
.method constructor <init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iput-object p2, p0, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    iput-object p3, p0, Lkawa/ReplDocument$3;->val$style:Ljavax/swing/text/AttributeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 148
    iget-object v0, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    invoke-virtual {v0}, Ljavax/swing/JTextPane;->getCaretPosition()I

    move-result v0

    iget-object v1, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v1, v1, Lkawa/ReplDocument;->outputMark:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    iget-object v1, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v2, v1, Lkawa/ReplDocument;->outputMark:I

    iget-object v3, p0, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    iget-object v4, p0, Lkawa/ReplDocument$3;->val$style:Ljavax/swing/text/AttributeSet;

    invoke-virtual {v1, v2, v3, v4}, Lkawa/ReplDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 151
    iget-object v1, p0, Lkawa/ReplDocument$3;->val$str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 152
    iget-object v2, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v3, v2, Lkawa/ReplDocument;->outputMark:I

    add-int/2addr v3, v1

    iput v3, v2, Lkawa/ReplDocument;->outputMark:I

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    iget-object v1, p0, Lkawa/ReplDocument$3;->this$0:Lkawa/ReplDocument;

    iget v1, v1, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setCaretPosition(I)V

    :cond_1
    return-void
.end method
