.class Lcom/android/browser/MiuiBrowserBookmarksPage$1;
.super Landroid/os/AsyncTask;
.source "MiuiBrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiBrowserBookmarksPage;->importFromFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiBrowserBookmarksPage;

.field final synthetic val$pDialog:Landroid/app/ProgressDialog;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiBrowserBookmarksPage;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->this$0:Lcom/android/browser/MiuiBrowserBookmarksPage;

    iput-object p2, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->val$pDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->this$0:Lcom/android/browser/MiuiBrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/browser/BookmarkImportExport;->importBookmarks(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 318
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->this$0:Lcom/android/browser/MiuiBrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->this$0:Lcom/android/browser/MiuiBrowserBookmarksPage;

    invoke-virtual {v0}, Lcom/android/browser/MiuiBrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c016c

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 345
    return-void

    .line 341
    :cond_1
    const v0, 0x7f0c016d

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 318
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 324
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 325
    iget-object v0, p0, Lcom/android/browser/MiuiBrowserBookmarksPage$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 326
    return-void
.end method
