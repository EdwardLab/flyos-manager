.class final Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/white/mobi/sdk/IRewardsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRewarded(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/MakeroidWhiteMobi;->OfferCompleted(I)V

    return-void
.end method
