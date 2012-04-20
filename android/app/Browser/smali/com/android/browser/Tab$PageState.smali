.class public Lcom/android/browser/Tab$PageState;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PageState"
.end annotation


# instance fields
.field mFavicon:Landroid/graphics/Bitmap;

.field mIncognito:Z

.field mIsBookmarkedSite:Z

.field mOriginalUrl:Ljava/lang/String;

.field mSecurityState:Lcom/android/browser/Tab$SecurityState;

.field mSslCertificateError:Landroid/net/http/SslError;

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "c"
    .parameter "incognito"

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-boolean p2, p0, Lcom/android/browser/Tab$PageState;->mIncognito:Z

    .line 218
    iget-boolean v0, p0, Lcom/android/browser/Tab$PageState;->mIncognito:Z

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "browser:incognito"

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 220
    const v0, 0x7f0c0005

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 225
    :goto_0
    sget-object v0, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lcom/android/browser/Tab$SecurityState;

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    .line 226
    return-void

    .line 222
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 223
    const v0, 0x7f0c0004

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "c"
    .parameter "incognito"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-boolean p2, p0, Lcom/android/browser/Tab$PageState;->mIncognito:Z

    .line 230
    iput-object p3, p0, Lcom/android/browser/Tab$PageState;->mUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/Tab$PageState;->mOriginalUrl:Ljava/lang/String;

    .line 231
    invoke-static {p3}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_SECURE:Lcom/android/browser/Tab$SecurityState;

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    .line 236
    :goto_0
    iput-object p4, p0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 237
    return-void

    .line 234
    :cond_0
    sget-object v0, Lcom/android/browser/Tab$SecurityState;->SECURITY_STATE_NOT_SECURE:Lcom/android/browser/Tab$SecurityState;

    iput-object v0, p0, Lcom/android/browser/Tab$PageState;->mSecurityState:Lcom/android/browser/Tab$SecurityState;

    goto :goto_0
.end method
