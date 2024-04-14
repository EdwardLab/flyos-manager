.class public Lgnu/kawa/swingviews/SwingContent;
.super Ljava/lang/Object;
.source "SwingContent.java"

# interfaces
.implements Ljavax/swing/text/AbstractDocument$Content;


# instance fields
.field public final buffer:Lgnu/lists/CharBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x64

    .line 31
    invoke-direct {p0, v0}, Lgnu/kawa/swingviews/SwingContent;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lgnu/lists/CharBuffer;

    invoke-direct {v0, p1}, Lgnu/lists/CharBuffer;-><init>(I)V

    add-int/lit8 p1, p1, -0x1

    .line 24
    iput p1, v0, Lgnu/lists/CharBuffer;->gapEnd:I

    .line 25
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object p1

    iget v1, v0, Lgnu/lists/CharBuffer;->gapEnd:I

    const/16 v2, 0xa

    aput-char v2, p1, v1

    .line 26
    iput-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    return-void
.end method

.method public constructor <init>(Lgnu/lists/CharBuffer;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    return-void
.end method


# virtual methods
.method public createPosition(I)Ljavax/swing/text/Position;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    if-ltz p1, :cond_0

    .line 102
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 104
    new-instance v1, Lgnu/kawa/swingviews/GapPosition;

    invoke-direct {v1, v0, p1}, Lgnu/kawa/swingviews/GapPosition;-><init>(Lgnu/lists/CharBuffer;I)V

    return-object v1

    .line 103
    :cond_0
    new-instance v0, Ljavax/swing/text/BadLocationException;

    const-string v1, "bad offset to createPosition"

    invoke-direct {v0, v1, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public getChars(IILjavax/swing/text/Segment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 40
    invoke-virtual {v0, p1, p2}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 43
    iput v1, p3, Ljavax/swing/text/Segment;->offset:I

    .line 44
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object p1

    iput-object p1, p3, Ljavax/swing/text/Segment;->array:[C

    .line 45
    iput p2, p3, Ljavax/swing/text/Segment;->count:I

    return-void

    .line 42
    :cond_0
    new-instance p2, Ljavax/swing/text/BadLocationException;

    const-string p3, "invalid offset"

    invoke-direct {p2, p3, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 52
    invoke-virtual {v0, p1, p2}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 55
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v0

    invoke-direct {p1, v0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 54
    :cond_0
    new-instance p2, Ljavax/swing/text/BadLocationException;

    const-string v0, "invalid offset"

    invoke-direct {p2, v0, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public insertString(ILjava/lang/String;)Ljavax/swing/undo/UndoableEdit;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, p2, v0}, Lgnu/kawa/swingviews/SwingContent;->insertString(ILjava/lang/String;Z)Ljavax/swing/undo/UndoableEdit;

    move-result-object p1

    return-object p1
.end method

.method public insertString(ILjava/lang/String;Z)Ljavax/swing/undo/UndoableEdit;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    if-ltz p1, :cond_0

    .line 80
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 82
    invoke-virtual {v0, p1, p2, p3}, Lgnu/lists/CharBuffer;->insert(ILjava/lang/String;Z)V

    .line 84
    new-instance p3, Lgnu/kawa/swingviews/GapUndoableEdit;

    invoke-direct {p3, p1}, Lgnu/kawa/swingviews/GapUndoableEdit;-><init>(I)V

    .line 85
    iput-object p0, p3, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 86
    iput-object p2, p3, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p3, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p3, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    return-object p3

    .line 81
    :cond_0
    new-instance p2, Ljavax/swing/text/BadLocationException;

    const-string p3, "bad insert"

    invoke-direct {p2, p3, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public length()I
    .locals 1

    .line 34
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v0

    return v0
.end method

.method public remove(II)Ljavax/swing/undo/UndoableEdit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    add-int v1, p1, p2

    .line 62
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 65
    invoke-virtual {v0, p1, p2}, Lgnu/lists/CharBuffer;->delete(II)V

    .line 67
    new-instance v1, Lgnu/kawa/swingviews/GapUndoableEdit;

    invoke-direct {v1, p1}, Lgnu/kawa/swingviews/GapUndoableEdit;-><init>(I)V

    .line 68
    iput-object p0, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 69
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v2

    iget v0, v0, Lgnu/lists/CharBuffer;->gapEnd:I

    sub-int/2addr v0, p2

    invoke-direct {p1, v2, v0, p2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    .line 70
    iput p2, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, v1, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    return-object v1

    .line 63
    :cond_0
    new-instance p2, Ljavax/swing/text/BadLocationException;

    const-string v0, "invalid remove"

    invoke-direct {p2, v0, p1}, Ljavax/swing/text/BadLocationException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method
