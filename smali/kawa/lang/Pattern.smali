.class public abstract Lkawa/lang/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Lgnu/text/Printable;


# static fields
.field private static matchArgs:[Lgnu/bytecode/Type;

.field public static final matchPatternMethod:Lgnu/bytecode/Method;

.field public static typePattern:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "kawa.lang.Pattern"

    .line 35
    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/lang/Pattern;->typePattern:Lgnu/bytecode/ClassType;

    const/4 v0, 0x3

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 36
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lkawa/lang/Pattern;->matchArgs:[Lgnu/bytecode/Type;

    .line 38
    sget-object v1, Lkawa/lang/Pattern;->typePattern:Lgnu/bytecode/ClassType;

    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    const-string v4, "match"

    invoke-virtual {v1, v4, v0, v3, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lkawa/lang/Pattern;->matchPatternMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
.end method

.method public match(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 21
    invoke-virtual {p0}, Lkawa/lang/Pattern;->varCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract varCount()I
.end method
