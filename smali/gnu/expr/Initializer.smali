.class public abstract Lgnu/expr/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# instance fields
.field public field:Lgnu/bytecode/Field;

.field next:Lgnu/expr/Initializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverse(Lgnu/expr/Initializer;)Lgnu/expr/Initializer;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    .line 21
    iget-object v1, p0, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    .line 22
    iput-object v0, p0, Lgnu/expr/Initializer;->next:Lgnu/expr/Initializer;

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract emit(Lgnu/expr/Compilation;)V
.end method

.method public reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "field "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lgnu/expr/Initializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x65

    invoke-virtual {p2, v0, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return-void
.end method
