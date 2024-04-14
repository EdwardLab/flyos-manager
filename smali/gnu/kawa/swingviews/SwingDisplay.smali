.class public Lgnu/kawa/swingviews/SwingDisplay;
.super Lgnu/kawa/models/Display;
.source "SwingDisplay.java"


# static fields
.field private static documents:Ljava/util/WeakHashMap;

.field static final instance:Lgnu/kawa/swingviews/SwingDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lgnu/kawa/swingviews/SwingDisplay;

    invoke-direct {v0}, Lgnu/kawa/swingviews/SwingDisplay;-><init>()V

    sput-object v0, Lgnu/kawa/swingviews/SwingDisplay;->instance:Lgnu/kawa/swingviews/SwingDisplay;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/kawa/models/Display;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/kawa/models/Display;
    .locals 1

    .line 14
    sget-object v0, Lgnu/kawa/swingviews/SwingDisplay;->instance:Lgnu/kawa/swingviews/SwingDisplay;

    return-object v0
.end method

.method static declared-synchronized getSwingDocument(Lgnu/kawa/models/Text;)Ljavax/swing/text/Document;
    .locals 4

    const-class v0, Lgnu/kawa/swingviews/SwingDisplay;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    .line 54
    :cond_0
    sget-object v1, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 56
    check-cast v1, Ljavax/swing/text/Document;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 57
    :cond_1
    :try_start_1
    new-instance v1, Ljavax/swing/text/PlainDocument;

    new-instance v2, Lgnu/kawa/swingviews/SwingContent;

    iget-object v3, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-direct {v2, v3}, Lgnu/kawa/swingviews/SwingContent;-><init>(Lgnu/lists/CharBuffer;)V

    invoke-direct {v1, v2}, Ljavax/swing/text/PlainDocument;-><init>(Ljavax/swing/text/AbstractDocument$Content;)V

    .line 59
    sget-object v2, Lgnu/kawa/swingviews/SwingDisplay;->documents:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;
    .locals 1

    .line 83
    instance-of v0, p0, Ljava/awt/event/ActionListener;

    if-eqz v0, :cond_0

    .line 84
    check-cast p0, Ljava/awt/event/ActionListener;

    return-object p0

    .line 85
    :cond_0
    new-instance v0, Lgnu/kawa/swingviews/ProcActionListener;

    check-cast p0, Lgnu/mapping/Procedure;

    invoke-direct {v0, p0}, Lgnu/kawa/swingviews/ProcActionListener;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0
.end method


# virtual methods
.method public addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
    .locals 1

    .line 65
    new-instance v0, Lgnu/kawa/swingviews/SwingBox;

    invoke-direct {v0, p1, p0}, Lgnu/kawa/swingviews/SwingBox;-><init>(Lgnu/kawa/models/Box;Lgnu/kawa/models/Display;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V
    .locals 1

    .line 25
    new-instance v0, Lgnu/kawa/swingviews/SwingButton;

    invoke-direct {v0, p1}, Lgnu/kawa/swingviews/SwingButton;-><init>(Lgnu/kawa/models/Button;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V
    .locals 2

    .line 35
    new-instance v0, Ljavax/swing/JLabel;

    new-instance v1, Ljavax/swing/ImageIcon;

    invoke-virtual {p1}, Lgnu/kawa/models/DrawImage;->getImage()Ljava/awt/Image;

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/swing/ImageIcon;-><init>(Ljava/awt/Image;)V

    invoke-direct {v0, v1}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
    .locals 1

    .line 30
    new-instance v0, Lgnu/kawa/swingviews/SwingLabel;

    invoke-direct {v0, p1}, Lgnu/kawa/swingviews/SwingLabel;-><init>(Lgnu/kawa/models/Label;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V
    .locals 3

    .line 70
    new-instance v0, Ljavax/swing/Box$Filler;

    invoke-virtual {p1}, Lgnu/kawa/models/Spacer;->getMinimumSize()Ljava/awt/Dimension;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/kawa/models/Spacer;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/kawa/models/Spacer;->getMaximumSize()Ljava/awt/Dimension;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/swing/Box$Filler;-><init>(Ljava/awt/Dimension;Ljava/awt/Dimension;Ljava/awt/Dimension;)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 3

    .line 44
    new-instance v0, Ljavax/swing/JTextField;

    invoke-static {p1}, Lgnu/kawa/swingviews/SwingDisplay;->getSwingDocument(Lgnu/kawa/models/Text;)Ljavax/swing/text/Document;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/kawa/models/Text;->getText()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x32

    invoke-direct {v0, v1, p1, v2}, Ljavax/swing/JTextField;-><init>(Ljavax/swing/text/Document;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/swingviews/SwingDisplay;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public addView(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 78
    check-cast p2, Ljava/awt/Container;

    check-cast p1, Ljava/awt/Component;

    invoke-virtual {p2, p1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    return-void
.end method

.method public coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 2

    .line 91
    instance-of v0, p1, Ljava/awt/Component;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lgnu/kawa/swingviews/ComponentModel;

    check-cast p1, Ljava/awt/Component;

    invoke-direct {v0, p1}, Lgnu/kawa/swingviews/ComponentModel;-><init>(Ljava/awt/Component;)V

    return-object v0

    .line 93
    :cond_0
    instance-of v0, p1, Lgnu/kawa/models/Paintable;

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lgnu/kawa/swingviews/ComponentModel;

    new-instance v1, Lgnu/kawa/swingviews/SwingPaintable;

    check-cast p1, Lgnu/kawa/models/Paintable;

    invoke-direct {v1, p1}, Lgnu/kawa/swingviews/SwingPaintable;-><init>(Lgnu/kawa/models/Paintable;)V

    invoke-direct {v0, v1}, Lgnu/kawa/swingviews/ComponentModel;-><init>(Ljava/awt/Component;)V

    return-object v0

    .line 96
    :cond_1
    invoke-super {p0, p1}, Lgnu/kawa/models/Display;->coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object p1

    return-object p1
.end method

.method public makeWindow()Lgnu/kawa/models/Window;
    .locals 2

    .line 18
    new-instance v0, Lgnu/kawa/swingviews/SwingFrame;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lgnu/kawa/swingviews/SwingFrame;-><init>(Ljava/lang/String;Ljavax/swing/JMenuBar;Ljava/lang/Object;)V

    .line 19
    iput-object p0, v0, Lgnu/kawa/swingviews/SwingFrame;->display:Lgnu/kawa/swingviews/SwingDisplay;

    return-object v0
.end method
