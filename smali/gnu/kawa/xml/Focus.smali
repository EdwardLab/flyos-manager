.class public final Lgnu/kawa/xml/Focus;
.super Lgnu/lists/TreePosition;
.source "Focus.java"


# static fields
.field public static final TYPE:Lgnu/bytecode/ClassType;

.field static current:Ljava/lang/ThreadLocal;

.field static final getCurrentFocusMethod:Lgnu/bytecode/Method;


# instance fields
.field contextPosition:Lgnu/math/IntNum;

.field public position:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    const-string v0, "gnu.kawa.xml.Focus"

    .line 47
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/Focus;->TYPE:Lgnu/bytecode/ClassType;

    const-string v1, "getCurrent"

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/Focus;->getCurrentFocusMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/lists/TreePosition;-><init>()V

    return-void
.end method

.method public static compileGetCurrent(Lgnu/expr/Compilation;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p0

    .line 44
    sget-object v0, Lgnu/kawa/xml/Focus;->getCurrentFocusMethod:Lgnu/bytecode/Method;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    return-void
.end method

.method public static getCurrent()Lgnu/kawa/xml/Focus;
    .locals 2

    .line 24
    sget-object v0, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lgnu/kawa/xml/Focus;

    invoke-direct {v0}, Lgnu/kawa/xml/Focus;-><init>()V

    .line 28
    sget-object v1, Lgnu/kawa/xml/Focus;->current:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    :cond_0
    check-cast v0, Lgnu/kawa/xml/Focus;

    return-object v0
.end method
