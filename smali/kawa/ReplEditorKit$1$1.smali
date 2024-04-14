.class Lkawa/ReplEditorKit$1$1;
.super Ljavax/swing/text/ComponentView;
.source "ReplPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplEditorKit$1;->create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkawa/ReplEditorKit$1;


# direct methods
.method constructor <init>(Lkawa/ReplEditorKit$1;Ljavax/swing/text/Element;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lkawa/ReplEditorKit$1$1;->this$1:Lkawa/ReplEditorKit$1;

    invoke-direct {p0, p2}, Ljavax/swing/text/ComponentView;-><init>(Ljavax/swing/text/Element;)V

    return-void
.end method


# virtual methods
.method protected createComponent()Ljava/awt/Component;
    .locals 3

    .line 194
    invoke-virtual {p0}, Lkawa/ReplEditorKit$1$1;->getElement()Ljavax/swing/text/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v0

    .line 195
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    .line 196
    sget-object v2, Lkawa/ReplPane;->ViewableAttribute:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/swing/text/AttributeSet;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/models/Viewable;

    .line 201
    invoke-static {}, Lgnu/kawa/swingviews/SwingDisplay;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lgnu/kawa/models/Viewable;->makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v1}, Ljavax/swing/JPanel;->getComponentCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 204
    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    .line 205
    invoke-virtual {v1}, Ljavax/swing/JPanel;->removeAll()V

    move-object v1, v0

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lkawa/ReplEditorKit$1$1;->this$1:Lkawa/ReplEditorKit$1;

    iget-object v0, v0, Lkawa/ReplEditorKit$1;->val$pane:Lkawa/ReplPane;

    invoke-virtual {v0}, Lkawa/ReplPane;->getBackground()Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    :goto_0
    return-object v1
.end method
