.class public Lgnu/xquery/util/ItemAt;
.super Lgnu/mapping/Procedure2;
.source "ItemAt.java"


# static fields
.field public static final itemAt:Lgnu/xquery/util/ItemAt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lgnu/xquery/util/ItemAt;

    invoke-direct {v0}, Lgnu/xquery/util/ItemAt;-><init>()V

    sput-object v0, Lgnu/xquery/util/ItemAt;->itemAt:Lgnu/xquery/util/ItemAt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static itemAt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 16
    instance-of v0, p0, Lgnu/mapping/Values;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 18
    check-cast p0, Lgnu/mapping/Values;

    .line 19
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0

    :cond_0
    sub-int/2addr p1, v1

    .line 21
    invoke-virtual {p0, p1}, Lgnu/mapping/Values;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p1, v1, :cond_2

    return-object p0

    .line 26
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lgnu/xquery/util/ItemAt;->itemAt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
