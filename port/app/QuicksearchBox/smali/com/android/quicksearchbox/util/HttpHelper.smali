.class public interface abstract Lcom/android/quicksearchbox/util/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/util/HttpHelper$UrlRewriter;,
        Lcom/android/quicksearchbox/util/HttpHelper$HttpException;,
        Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;
    }
.end annotation


# virtual methods
.method public abstract get(Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/quicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation
.end method
