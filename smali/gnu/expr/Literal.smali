.class public Lgnu/expr/Literal;
.super Ljava/lang/Object;
.source "Literal.java"


# static fields
.field static final CYCLIC:I = 0x4

.field static final EMITTED:I = 0x8

.field static final WRITING:I = 0x1

.field static final WRITTEN:I = 0x2

.field public static final nullLiteral:Lgnu/expr/Literal;


# instance fields
.field argTypes:[Lgnu/bytecode/Type;

.field argValues:[Ljava/lang/Object;

.field public field:Lgnu/bytecode/Field;

.field public flags:I

.field index:I

.field next:Lgnu/expr/Literal;

.field public type:Lgnu/bytecode/Type;

.field value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Lgnu/expr/Literal;

    sget-object v1, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 91
    iget-object p3, p3, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iput-object p2, p0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    .line 93
    invoke-virtual {p2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    const/16 p1, 0xa

    .line 94
    iput p1, p0, Lgnu/expr/Literal;->flags:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 107
    iput-object p2, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 100
    iget-object p3, p3, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {p3, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iput-object p2, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V
    .locals 2

    const/4 v0, 0x0

    .line 75
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Ljava/lang/String;Lgnu/expr/LitTable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lgnu/expr/LitTable;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    .line 81
    iget-object v0, p3, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    .line 83
    invoke-virtual {p0, p2, p3}, Lgnu/expr/Literal;->assign(Ljava/lang/String;Lgnu/expr/LitTable;)V

    return-void
.end method


# virtual methods
.method assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V
    .locals 1

    .line 67
    iget-object v0, p2, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    iput-object v0, p0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    .line 68
    iput-object p0, p2, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .line 69
    iput-object p1, p0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    return-void
.end method

.method assign(Lgnu/expr/LitTable;)V
    .locals 2

    const/4 v0, 0x0

    .line 46
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Literal;->assign(Ljava/lang/String;Lgnu/expr/LitTable;)V

    return-void
.end method

.method assign(Ljava/lang/String;Lgnu/expr/LitTable;)V
    .locals 3

    .line 53
    iget-object v0, p2, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    :goto_0
    if-nez p1, :cond_1

    .line 57
    iget p1, p2, Lgnu/expr/LitTable;->literalsCount:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p2, Lgnu/expr/LitTable;->literalsCount:I

    iput p1, p0, Lgnu/expr/Literal;->index:I

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lit"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgnu/expr/Literal;->index:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    or-int/lit8 v0, v0, 0x1

    .line 62
    :goto_1
    iget-object v1, p2, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    iget-object v2, p0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {v1, p1, v2, v0}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Literal;->assign(Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    return-object v0
.end method
