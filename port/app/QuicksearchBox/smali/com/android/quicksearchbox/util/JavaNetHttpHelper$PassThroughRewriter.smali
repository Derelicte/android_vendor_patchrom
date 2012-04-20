.class public Lcom/android/quicksearchbox/util/JavaNetHttpHelper$PassThroughRewriter;
.super Ljava/lang/Object;
.source "JavaNetHttpHelper.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/util/JavaNetHttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PassThroughRewriter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "url"

    .prologue
    .line 184
    return-object p1
.end method
