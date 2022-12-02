#include<stdio.h>

struct Gantt_Chart
	{
		int process_no;
		int time_taken;
	}gc[100];

int main()
{
	int n,a[50],flag[50],tat[50],wt[50],ts,i,j,k,l;
	printf("Enter no. of processes:\n");
	scanf("%d",&n);
	printf("Enter CPU burst time of each process:\n");
	for(i=0;i<n;i++)
		scanf("%d",&a[i]);
	for(i=0;i<n;i++)
		flag[i]=0;
	printf("Enter time slice:\n");
	scanf("%d",&ts);
	i=0;
	k=0;
	while(1)
	{
		if(a[i]>=ts)
		{
			a[i]=a[i]-ts;
			gc[k].process_no=i;
			gc[k].time_taken=ts;
			k++;
		}
		else if((a[i]<ts)&&(a[i]>0))
		{
			gc[k].process_no=i;
			gc[k].time_taken=a[i];
			a[i]=0;
			k++;
		}
		else if(a[i]==0)
			flag[i]=1;
		i++;
		if(i==n)
			i=0;
		for(j=0;j<n;j++)
		{
			if(flag[j]!=1)
				break;
		}
		if(j==n)
			break;
	}
	printf("Turn around times:\n");
	for(j=0;j<n;j++)
	{
		tat[j]=0;
		for(i=k-1;i>=0;i--)
		{
			if(gc[i].process_no==j)
			{
				for(l=0;l<=i;l++)
					tat[j]+=gc[l].time_taken;
				break;	
			}
		}
		printf("\n    %d   %d      \n",j,tat[j]);
	}
	printf("Waiting times:\n");
	for(j=0;j<n;j++)
	{
		wt[j]=0;
		for(i=k-1;i>=0;i--)
		{
			if(gc[i].process_no==j)
			{
				for(l=0;l<=i;l++)
				{
					if(gc[l].process_no!=j)
						wt[j]+=gc[l].time_taken;
				}
				break;
			}
		}
		printf("\n    %d   %d      \n",j,wt[j]);
	}	
}
