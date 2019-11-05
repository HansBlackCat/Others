#Python3

class FourCal:
    def __init__(self,first,second):
        self.first=first
        self.second=second
    def add(self):
        result=self.first+self.second
        return result
    def div(sel):
        result=self.first/self.second
        return  result 

class MoreFourCal(FourCal):
    def pow(self):
       result=self.first**self.second
       return result 

class SafeFourCal(FourCal):
    def div(self):
        if self.second==0:
            return "Cannot div"
        else:
            return self.first/self.second


a=SafeFourCal(4,0)
print(a.div())
    
