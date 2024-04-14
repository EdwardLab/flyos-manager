.class final Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;
.super Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$c;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    new-instance p2, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b$1;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$b;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
