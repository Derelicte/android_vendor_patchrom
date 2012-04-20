.class public final Lcom/android/contacts/CalllogMetaData;
.super Ljava/lang/Object;
.source "CalllogMetaData.java"


# instance fields
.field private mCountryIso:Ljava/lang/String;

.field private mDate:J

.field private mDuration:J

.field private mFowardedCall:I

.field private mGeocodedLocation:Ljava/lang/String;

.field private mId:J

.field private mNumber:Ljava/lang/String;

.field private mType:I

.field private mVoicemailUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "date"
    .parameter "duration"
    .parameter "number"
    .parameter "type"
    .parameter "countryIso"
    .parameter "geocodedLocation"
    .parameter "voicemailUri"
    .parameter "fowardedCall"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/android/contacts/CalllogMetaData;->mId:J

    .line 19
    iput-wide p3, p0, Lcom/android/contacts/CalllogMetaData;->mDate:J

    .line 20
    iput-wide p5, p0, Lcom/android/contacts/CalllogMetaData;->mDuration:J

    .line 21
    iput-object p7, p0, Lcom/android/contacts/CalllogMetaData;->mNumber:Ljava/lang/String;

    .line 22
    iput p8, p0, Lcom/android/contacts/CalllogMetaData;->mType:I

    .line 23
    iput-object p9, p0, Lcom/android/contacts/CalllogMetaData;->mCountryIso:Ljava/lang/String;

    .line 24
    iput-object p10, p0, Lcom/android/contacts/CalllogMetaData;->mGeocodedLocation:Ljava/lang/String;

    .line 25
    iput-object p11, p0, Lcom/android/contacts/CalllogMetaData;->mVoicemailUri:Ljava/lang/String;

    .line 26
    iput p12, p0, Lcom/android/contacts/CalllogMetaData;->mFowardedCall:I

    .line 27
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/contacts/CalllogMetaData;->mDate:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/contacts/CalllogMetaData;->mDuration:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/contacts/CalllogMetaData;->mId:J

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/contacts/CalllogMetaData;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/contacts/CalllogMetaData;->mType:I

    return v0
.end method

.method public getVoicemailUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/CalllogMetaData;->mVoicemailUri:Ljava/lang/String;

    return-object v0
.end method

.method public getmFowardedCall()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/contacts/CalllogMetaData;->mFowardedCall:I

    return v0
.end method
