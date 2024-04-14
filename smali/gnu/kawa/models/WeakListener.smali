.class public Lgnu/kawa/models/WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "WeakListener.java"


# instance fields
.field next:Lgnu/kawa/models/WeakListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/models/WeakListener;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lgnu/kawa/models/ModelListener;

    invoke-interface {p1, p2, p3}, Lgnu/kawa/models/ModelListener;->modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V

    return-void
.end method
