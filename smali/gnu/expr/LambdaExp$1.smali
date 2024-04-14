.class Lgnu/expr/LambdaExp$1;
.super Ljava/lang/Object;
.source "LambdaExp.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/expr/LambdaExp;

.field final synthetic val$mangled:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgnu/expr/LambdaExp;Ljava/lang/String;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lgnu/expr/LambdaExp$1;->this$0:Lgnu/expr/LambdaExp;

    iput-object p2, p0, Lgnu/expr/LambdaExp$1;->val$mangled:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 2

    .line 935
    check-cast p1, Lgnu/bytecode/Method;

    .line 936
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/LambdaExp$1;->val$mangled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 938
    :cond_0
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object p1

    .line 939
    array-length p1, p1

    iget-object v0, p0, Lgnu/expr/LambdaExp$1;->this$0:Lgnu/expr/LambdaExp;

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
