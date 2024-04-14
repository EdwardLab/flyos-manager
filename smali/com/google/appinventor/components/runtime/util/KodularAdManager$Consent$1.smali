.class final Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateSuccess()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent$1;)V

    invoke-static {v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method
