.class final Lcom/google/appinventor/components/runtime/Web$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic L6eA3PNLX7qAn7auGyx3LkWrRGTtmcvGyv1KqaOhtURuMc1T8UYaeY4Lx3WsQGgd:Ljava/lang/String;

.field private synthetic cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

.field private synthetic nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Web$7;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$7;->L6eA3PNLX7qAn7auGyx3LkWrRGTtmcvGyv1KqaOhtURuMc1T8UYaeY4Lx3WsQGgd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$7;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 937
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$7;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web$CapturedProperties;->urlString:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Web$7;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$7;->L6eA3PNLX7qAn7auGyx3LkWrRGTtmcvGyv1KqaOhtURuMc1T8UYaeY4Lx3WsQGgd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$7;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Web;->GotFile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
