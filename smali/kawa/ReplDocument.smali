.class public Lkawa/ReplDocument;
.super Ljavax/swing/text/DefaultStyledDocument;
.source "ReplDocument.java"

# interfaces
.implements Ljavax/swing/event/DocumentListener;
.implements Ljava/awt/event/FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/ReplDocument$DocumentCloseListener;
    }
.end annotation


# static fields
.field static blueStyle:Ljavax/swing/text/Style;

.field public static defaultStyle:Ljavax/swing/text/Style;

.field public static inputStyle:Ljavax/swing/text/Style;

.field static promptStyle:Ljavax/swing/text/Style;

.field public static redStyle:Ljavax/swing/text/Style;

.field public static styles:Ljavax/swing/text/StyleContext;


# instance fields
.field closeListeners:Ljava/lang/Object;

.field content:Lgnu/kawa/swingviews/SwingContent;

.field public endMark:I

.field environment:Lgnu/mapping/Environment;

.field final err_stream:Lkawa/ReplPaneOutPort;

.field final in_p:Lkawa/GuiInPort;

.field final in_r:Lgnu/text/QueueReader;

.field language:Lgnu/expr/Language;

.field length:I

.field final out_stream:Lkawa/ReplPaneOutPort;

.field public outputMark:I

.field pane:Ljavax/swing/JTextPane;

.field paneCount:I

.field thread:Lgnu/mapping/Future;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljavax/swing/text/StyleContext;

    invoke-direct {v0}, Ljavax/swing/text/StyleContext;-><init>()V

    sput-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "default"

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->defaultStyle:Ljavax/swing/text/Style;

    .line 25
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "input"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    .line 26
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "red"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    .line 27
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "blue"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->blueStyle:Ljavax/swing/text/Style;

    .line 28
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    const-string v1, "prompt"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/text/StyleContext;->addStyle(Ljava/lang/String;Ljavax/swing/text/Style;)Ljavax/swing/text/Style;

    move-result-object v0

    sput-object v0, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    .line 30
    sget-object v0, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 31
    sget-object v0, Lkawa/ReplDocument;->blueStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->blue:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 32
    sget-object v0, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    sget-object v1, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setForeground(Ljavax/swing/text/MutableAttributeSet;Ljava/awt/Color;)V

    .line 33
    sget-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljavax/swing/text/StyleConstants;->setBold(Ljavax/swing/text/MutableAttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 1

    .line 62
    new-instance v0, Lgnu/kawa/swingviews/SwingContent;

    invoke-direct {v0}, Lgnu/kawa/swingviews/SwingContent;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lkawa/ReplDocument;-><init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    return-void
.end method

.method private constructor <init>(Lgnu/kawa/swingviews/SwingContent;Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V
    .locals 4

    .line 67
    sget-object v0, Lkawa/ReplDocument;->styles:Ljavax/swing/text/StyleContext;

    invoke-direct {p0, p1, v0}, Ljavax/swing/text/DefaultStyledDocument;-><init>(Ljavax/swing/text/AbstractDocument$Content;Ljavax/swing/text/StyleContext;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lkawa/ReplDocument;->outputMark:I

    const/4 v1, -0x1

    .line 56
    iput v1, p0, Lkawa/ReplDocument;->endMark:I

    .line 58
    iput v0, p0, Lkawa/ReplDocument;->length:I

    .line 68
    iput-object p1, p0, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    .line 69
    invoke-static {}, Lgnu/expr/ModuleBody;->exitIncrement()V

    .line 71
    invoke-virtual {p0, p0}, Lkawa/ReplDocument;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 73
    iput-object p2, p0, Lkawa/ReplDocument;->language:Lgnu/expr/Language;

    .line 75
    new-instance p1, Lkawa/ReplDocument$1;

    invoke-direct {p1, p0}, Lkawa/ReplDocument$1;-><init>(Lkawa/ReplDocument;)V

    iput-object p1, p0, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    .line 79
    new-instance v0, Lkawa/ReplPaneOutPort;

    sget-object v1, Lkawa/ReplDocument;->defaultStyle:Ljavax/swing/text/Style;

    const-string v2, "/dev/stdout"

    invoke-direct {v0, p0, v2, v1}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    iput-object v0, p0, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    .line 80
    new-instance v1, Lkawa/ReplPaneOutPort;

    sget-object v2, Lkawa/ReplDocument;->redStyle:Ljavax/swing/text/Style;

    const-string v3, "/dev/stderr"

    invoke-direct {v1, p0, v3, v2}, Lkawa/ReplPaneOutPort;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    iput-object v1, p0, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    .line 81
    new-instance v2, Lkawa/GuiInPort;

    const-string v3, "/dev/stdin"

    invoke-static {v3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0, p0}, Lkawa/GuiInPort;-><init>(Ljava/io/Reader;Lgnu/text/Path;Lgnu/mapping/OutPort;Lkawa/ReplDocument;)V

    iput-object v2, p0, Lkawa/ReplDocument;->in_p:Lkawa/GuiInPort;

    .line 83
    new-instance p1, Lkawa/ReplDocument$2;

    invoke-direct {p1, p0, p2, p4}, Lkawa/ReplDocument$2;-><init>(Lkawa/ReplDocument;Lgnu/expr/Language;Z)V

    invoke-static {p1, p3, v2, v0, v1}, Lgnu/mapping/Future;->make(Lgnu/mapping/Procedure;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;)Lgnu/mapping/Future;

    move-result-object p1

    iput-object p1, p0, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    .line 98
    invoke-virtual {p1}, Lgnu/mapping/Future;->start()V

    return-void
.end method


# virtual methods
.method public addDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V
    .locals 2

    .line 253
    iget-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 254
    iput-object p1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    goto :goto_1

    .line 258
    :cond_0
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 259
    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    .line 262
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    iget-object v1, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iput-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    .line 266
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public checkingPendingInput()V
    .locals 1

    .line 166
    new-instance v0, Lkawa/ReplDocument$4;

    invoke-direct {v0, p0}, Lkawa/ReplDocument$4;-><init>(Lkawa/ReplDocument;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method close()V
    .locals 2

    .line 234
    iget-object v0, p0, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v0}, Lgnu/text/QueueReader;->appendEOF()V

    const-wide/16 v0, 0x64

    .line 237
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :catch_0
    iget-object v0, p0, Lkawa/ReplDocument;->thread:Lgnu/mapping/Future;

    invoke-virtual {v0}, Lgnu/mapping/Future;->stop()V

    .line 243
    invoke-virtual {p0}, Lkawa/ReplDocument;->fireDocumentClosed()V

    .line 244
    invoke-static {}, Lgnu/expr/ModuleBody;->exitDecrement()V

    return-void
.end method

.method public declared-synchronized deleteOldText()V
    .locals 4

    monitor-enter p0

    .line 107
    :try_start_0
    iget v0, p0, Lkawa/ReplDocument;->outputMark:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lkawa/ReplDocument;->getText(II)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget v2, p0, Lkawa/ReplDocument;->outputMark:I

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 110
    :goto_0
    invoke-virtual {p0, v1, v0}, Lkawa/ReplDocument;->remove(II)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 116
    :try_start_1
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method fireDocumentClosed()V
    .locals 3

    .line 292
    iget-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v1, v0, Lkawa/ReplDocument$DocumentCloseListener;

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Lkawa/ReplDocument$DocumentCloseListener;

    invoke-interface {v0, p0}, Lkawa/ReplDocument$DocumentCloseListener;->closed(Lkawa/ReplDocument;)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 296
    check-cast v0, Ljava/util/ArrayList;

    .line 297
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 298
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkawa/ReplDocument$DocumentCloseListener;

    invoke-interface {v2, p0}, Lkawa/ReplDocument$DocumentCloseListener;->closed(Lkawa/ReplDocument;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public focusGained(Ljava/awt/event/FocusEvent;)V
    .locals 3

    .line 193
    invoke-virtual {p1}, Ljava/awt/event/FocusEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    .line 194
    instance-of v0, p1, Lkawa/ReplPane;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    move-object v2, p1

    check-cast v2, Lkawa/ReplPane;

    iput-object v2, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    goto :goto_0

    .line 200
    :cond_0
    iput-object v1, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    :goto_0
    if-eqz v0, :cond_1

    .line 201
    move-object v1, p1

    check-cast v1, Lkawa/ReplPane;

    :cond_1
    iput-object v1, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    return-void
.end method

.method public focusLost(Ljava/awt/event/FocusEvent;)V
    .locals 0

    const/4 p1, 0x0

    .line 206
    iput-object p1, p0, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    return-void
.end method

.method public insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 0

    .line 127
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljavax/swing/text/DefaultStyledDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 132
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public removeDocumentCloseListener(Lkawa/ReplDocument$DocumentCloseListener;)V
    .locals 4

    .line 272
    iget-object v0, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    instance-of v1, v0, Lkawa/ReplDocument$DocumentCloseListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_3

    .line 275
    iput-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    .line 279
    check-cast v0, Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 282
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 286
    iput-object v2, p0, Lkawa/ReplDocument;->closeListeners:Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0

    .line 211
    invoke-virtual {p0, p1}, Lkawa/ReplDocument;->textValueChanged(Ljavax/swing/event/DocumentEvent;)V

    return-void
.end method

.method public declared-synchronized textValueChanged(Ljavax/swing/event/DocumentEvent;)V
    .locals 3

    monitor-enter p0

    .line 217
    :try_start_0
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getOffset()I

    move-result p1

    .line 218
    invoke-virtual {p0}, Lkawa/ReplDocument;->getLength()I

    move-result v0

    iget v1, p0, Lkawa/ReplDocument;->length:I

    sub-int/2addr v0, v1

    add-int/2addr v1, v0

    .line 219
    iput v1, p0, Lkawa/ReplDocument;->length:I

    .line 220
    iget v1, p0, Lkawa/ReplDocument;->outputMark:I

    if-ge p1, v1, :cond_0

    add-int/2addr v1, v0

    .line 221
    iput v1, p0, Lkawa/ReplDocument;->outputMark:I

    goto :goto_0

    :cond_0
    sub-int v2, p1, v0

    if-ge v2, v1, :cond_1

    .line 223
    iput p1, p0, Lkawa/ReplDocument;->outputMark:I

    .line 224
    :cond_1
    :goto_0
    iget v1, p0, Lkawa/ReplDocument;->endMark:I

    if-ltz v1, :cond_3

    if-ge p1, v1, :cond_2

    add-int/2addr v1, v0

    .line 227
    iput v1, p0, Lkawa/ReplDocument;->endMark:I

    goto :goto_1

    :cond_2
    sub-int v0, p1, v0

    if-ge v0, v1, :cond_3

    .line 229
    iput p1, p0, Lkawa/ReplDocument;->endMark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V
    .locals 1

    .line 145
    new-instance v0, Lkawa/ReplDocument$3;

    invoke-direct {v0, p0, p1, p2}, Lkawa/ReplDocument$3;-><init>(Lkawa/ReplDocument;Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    return-void
.end method
