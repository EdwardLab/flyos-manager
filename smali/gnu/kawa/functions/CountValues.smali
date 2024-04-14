.class public Lgnu/kawa/functions/CountValues;
.super Lgnu/mapping/Procedure1;
.source "CountValues.java"


# static fields
.field public static final countValues:Lgnu/kawa/functions/CountValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lgnu/kawa/functions/CountValues;

    invoke-direct {v0}, Lgnu/kawa/functions/CountValues;-><init>()V

    sput-object v0, Lgnu/kawa/functions/CountValues;->countValues:Lgnu/kawa/functions/CountValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static countValues(Ljava/lang/Object;)I
    .locals 1

    .line 16
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    check-cast p0, Lgnu/mapping/Values;

    invoke-virtual {p0}, Lgnu/mapping/Values;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2

    .line 26
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 27
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 29
    invoke-static {v1}, Lgnu/kawa/functions/CountValues;->countValues(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-static {p1}, Lgnu/kawa/functions/CountValues;->countValues(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p1

    return-object p1
.end method
