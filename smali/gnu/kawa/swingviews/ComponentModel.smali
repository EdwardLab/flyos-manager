.class Lgnu/kawa/swingviews/ComponentModel;
.super Lgnu/kawa/models/Model;
.source "SwingDisplay.java"


# instance fields
.field component:Ljava/awt/Component;


# direct methods
.method public constructor <init>(Ljava/awt/Component;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 182
    iput-object p1, p0, Lgnu/kawa/swingviews/ComponentModel;->component:Ljava/awt/Component;

    return-void
.end method


# virtual methods
.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lgnu/kawa/swingviews/ComponentModel;->component:Ljava/awt/Component;

    invoke-virtual {p1, v0, p2}, Lgnu/kawa/models/Display;->addView(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
