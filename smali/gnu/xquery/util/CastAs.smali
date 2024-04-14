.class public Lgnu/xquery/util/CastAs;
.super Lgnu/kawa/functions/Convert;
.source "CastAs.java"


# static fields
.field public static final castAs:Lgnu/xquery/util/CastAs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/xquery/util/CastAs;

    invoke-direct {v0}, Lgnu/xquery/util/CastAs;-><init>()V

    sput-object v0, Lgnu/xquery/util/CastAs;->castAs:Lgnu/xquery/util/CastAs;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lgnu/kawa/functions/Convert;-><init>()V

    .line 17
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyCastAs"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/CastAs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 23
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    .line 24
    instance-of v1, v0, Lgnu/kawa/xml/XDataType;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v0, p2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    instance-of v1, v0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v1, :cond_6

    .line 28
    check-cast v0, Lgnu/kawa/reflect/OccurrenceType;

    .line 29
    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v1

    .line 30
    instance-of v2, v1, Lgnu/kawa/xml/XDataType;

    if-eqz v2, :cond_6

    .line 32
    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v2

    .line 33
    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v0

    .line 34
    instance-of v3, p2, Lgnu/mapping/Values;

    if-eqz v3, :cond_4

    .line 36
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v3, :cond_1

    if-nez v2, :cond_1

    return-object p2

    .line 38
    :cond_1
    move-object v3, p2

    check-cast v3, Lgnu/mapping/Values;

    .line 39
    invoke-virtual {v3}, Lgnu/mapping/Values;->startPos()I

    move-result v4

    const/4 v5, 0x0

    .line 41
    new-instance v6, Lgnu/mapping/Values;

    invoke-direct {v6}, Lgnu/mapping/Values;-><init>()V

    .line 44
    :goto_0
    invoke-virtual {v3, v4}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v4

    if-nez v4, :cond_3

    if-lt v5, v2, :cond_5

    if-ltz v0, :cond_2

    if-gt v5, v0, :cond_5

    .line 48
    :cond_2
    invoke-virtual {v6}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :cond_3
    invoke-virtual {v3, v4}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v7

    .line 52
    move-object v8, v1

    check-cast v8, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v8, v7}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 53
    invoke-virtual {v6, v7}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    if-gt v2, v3, :cond_5

    if-eqz v0, :cond_5

    .line 60
    check-cast v1, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v1, p2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :cond_5
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot cast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_6
    invoke-super {p0, p1, p2}, Lgnu/kawa/functions/Convert;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0

    .line 72
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method
