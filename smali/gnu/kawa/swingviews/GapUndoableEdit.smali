.class Lgnu/kawa/swingviews/GapUndoableEdit;
.super Ljavax/swing/undo/AbstractUndoableEdit;
.source "SwingContent.java"


# instance fields
.field content:Lgnu/kawa/swingviews/SwingContent;

.field data:Ljava/lang/String;

.field isInsertion:Z

.field nitems:I

.field startOffset:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljavax/swing/undo/AbstractUndoableEdit;-><init>()V

    .line 136
    iput p1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    return-void
.end method

.method private doit(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/text/BadLocationException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    iget v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    iget-object v1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->data:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lgnu/kawa/swingviews/SwingContent;->insertString(ILjava/lang/String;)Ljavax/swing/undo/UndoableEdit;

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->content:Lgnu/kawa/swingviews/SwingContent;

    iget v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->startOffset:I

    iget v1, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->nitems:I

    invoke-virtual {p1, v0, v1}, Lgnu/kawa/swingviews/SwingContent;->remove(II)Ljavax/swing/undo/UndoableEdit;

    :goto_0
    return-void
.end method


# virtual methods
.method public redo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/undo/CannotUndoException;
        }
    .end annotation

    .line 170
    invoke-super {p0}, Ljavax/swing/undo/AbstractUndoableEdit;->redo()V

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    invoke-direct {p0, v0}, Lgnu/kawa/swingviews/GapUndoableEdit;->doit(Z)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 177
    :catch_0
    new-instance v0, Ljavax/swing/undo/CannotRedoException;

    invoke-direct {v0}, Ljavax/swing/undo/CannotRedoException;-><init>()V

    throw v0
.end method

.method public undo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/swing/undo/CannotUndoException;
        }
    .end annotation

    .line 157
    invoke-super {p0}, Ljavax/swing/undo/AbstractUndoableEdit;->undo()V

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lgnu/kawa/swingviews/GapUndoableEdit;->isInsertion:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lgnu/kawa/swingviews/GapUndoableEdit;->doit(Z)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 164
    :catch_0
    new-instance v0, Ljavax/swing/undo/CannotUndoException;

    invoke-direct {v0}, Ljavax/swing/undo/CannotUndoException;-><init>()V

    throw v0
.end method
