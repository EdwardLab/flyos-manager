.class Lgnu/kawa/functions/SetList;
.super Lgnu/mapping/Procedure2;
.source "Setter.java"


# instance fields
.field elementType:Lgnu/bytecode/Type;

.field list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 76
    iput-object p1, p0, Lgnu/kawa/functions/SetList;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lgnu/kawa/functions/SetList;->list:Ljava/util/List;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method
