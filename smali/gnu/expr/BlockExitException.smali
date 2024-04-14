.class Lgnu/expr/BlockExitException;
.super Ljava/lang/RuntimeException;
.source "BlockExp.java"


# instance fields
.field exit:Lgnu/expr/ExitExp;

.field result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lgnu/expr/ExitExp;Ljava/lang/Object;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 125
    iput-object p1, p0, Lgnu/expr/BlockExitException;->exit:Lgnu/expr/ExitExp;

    .line 126
    iput-object p2, p0, Lgnu/expr/BlockExitException;->result:Ljava/lang/Object;

    return-void
.end method
