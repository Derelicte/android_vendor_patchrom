.class Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiAccountsLoader;
.super Landroid/content/CursorLoader;
.source "MiuiBrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiBrowserBookmarksPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MiuiAccountsLoader"
.end annotation


# static fields
.field static ACCOUNTS_PROJECTION:[Ljava/lang/String;

.field static ACCOUNTS_SORT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiAccountsLoader;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    .line 67
    const-string v0, "root_id asc"

    sput-object v0, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiAccountsLoader;->ACCOUNTS_SORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 70
    sget-object v0, Landroid/provider/BrowserContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "allowEmptyAccounts"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiAccountsLoader;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    sget-object v6, Lcom/android/browser/MiuiBrowserBookmarksPage$MiuiAccountsLoader;->ACCOUNTS_SORT:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
