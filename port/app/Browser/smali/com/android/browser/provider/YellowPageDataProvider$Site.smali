.class public Lcom/android/browser/provider/YellowPageDataProvider$Site;
.super Ljava/lang/Object;
.source "YellowPageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/YellowPageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Site"
.end annotation


# instance fields
.field public final _isWapsite:Z

.field public final _title:Ljava/lang/String;

.field public final _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "title"
    .parameter "url"
    .parameter "isWapsite"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/browser/provider/YellowPageDataProvider$Site;->_title:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/android/browser/provider/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    .line 91
    iput-boolean p3, p0, Lcom/android/browser/provider/YellowPageDataProvider$Site;->_isWapsite:Z

    .line 92
    return-void
.end method
