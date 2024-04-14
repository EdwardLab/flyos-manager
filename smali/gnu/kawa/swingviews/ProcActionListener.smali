.class Lgnu/kawa/swingviews/ProcActionListener;
.super Ljava/lang/Object;
.source "SwingDisplay.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/kawa/swingviews/ProcActionListener;->proc:Lgnu/mapping/Procedure;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 110
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/swingviews/ProcActionListener;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 114
    new-instance v0, Lgnu/mapping/WrappedException;

    invoke-direct {v0, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
